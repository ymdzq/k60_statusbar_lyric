.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mSupportMiPlayAudio:Z

    .line 4
    if-eqz p0, :cond_8

    .line 6
    const-class p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 8
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 24
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->isInterconnectionCTAAgree(Landroid/content/Context;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    move v0, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v2

    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 41
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 47
    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 52
    if-eqz p0, :cond_9

    .line 54
    invoke-interface {p0}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->showCtaPage()V

    .line 56
    goto/16 :goto_5

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    move-result-object p0

    .line 64
    check-cast p0, Landroid/view/ViewGroup;

    .line 65
    :goto_1
    if-eqz p0, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 69
    move-result-object p1

    .line 72
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 73
    if-eqz p1, :cond_2

    .line 75
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 77
    if-nez p1, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 81
    move-result-object p0

    .line 84
    check-cast p0, Landroid/view/ViewGroup;

    .line 85
    goto :goto_1

    .line 87
    :cond_2
    const-class p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 88
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 93
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 94
    const-string/jumbo v0, "\u6295\u5c04"

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onMediaClick(Ljava/lang/String;)V

    .line 99
    const-class p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 102
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    check-cast p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 108
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 110
    if-nez v0, :cond_9

    .line 112
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    .line 114
    if-eqz v0, :cond_3

    .line 116
    goto/16 :goto_5

    .line 118
    :cond_3
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 120
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    .line 122
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mIsMiPlayModal:Z

    .line 124
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowManager:Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;

    .line 126
    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->setBlurRatio(F)V

    .line 129
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mStatusBarState:Ljava/lang/Integer;

    .line 132
    if-nez v1, :cond_4

    .line 134
    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    const-string v1, "notification"

    .line 143
    goto :goto_3

    .line 145
    :cond_5
    :goto_2
    const-string v1, "keyguard"

    .line 146
    :goto_3
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 148
    const/4 v5, 0x0

    .line 150
    if-nez v4, :cond_6

    .line 151
    move-object v4, v5

    .line 153
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeRow()V

    .line 154
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 157
    if-nez v6, :cond_7

    .line 159
    goto :goto_4

    .line 161
    :cond_7
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 162
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 165
    :goto_4
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeContentView()V

    .line 167
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 170
    move-result-object v5

    .line 173
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 174
    move-result-object v5

    .line 177
    const v6, 0x7f0d0248    # @layout/modal_qs_control_detail 'res/layout/modal_qs_control_detail.xml'

    .line 178
    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    move-result-object v5

    .line 184
    check-cast v5, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 185
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mContentView:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 187
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {v4, p0, v1, v3}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->showMiPlay(Landroid/view/View;Ljava/lang/String;Z)V

    .line 192
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 200
    const/4 v2, -0x1

    .line 202
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 203
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 205
    and-int/lit8 v2, v2, -0x9

    .line 207
    and-int/lit8 v2, v2, -0x21

    .line 209
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->apply()V

    .line 213
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mFromView:Landroid/view/View;

    .line 216
    new-instance p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;

    .line 218
    const/4 v0, 0x3

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;I)V

    .line 221
    new-instance v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$tryAnimaEnterModelForMiPlay$animatorListener$1;

    .line 224
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalController$tryAnimaEnterModelForMiPlay$animatorListener$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;)V

    .line 226
    const-wide/16 v1, 0x12c

    .line 229
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->startAnimator(Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;Landroid/animation/Animator$AnimatorListener;J)V

    .line 231
    goto :goto_5

    .line 234
    :cond_8
    const-string p0, "MiuiMediaTransferManager"

    .line 235
    const-string p1, "not supported mi play, this should never happen"

    .line 237
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_9
    :goto_5
    return-void
    .line 242
.end method
