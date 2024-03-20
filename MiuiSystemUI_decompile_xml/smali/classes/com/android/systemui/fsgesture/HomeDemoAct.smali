.class public Lcom/android/systemui/fsgesture/HomeDemoAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public appBgView:Landroid/view/View;

.field public appNoteImg:Landroid/view/View;

.field public fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field public fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field public fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field public final handler:Landroid/os/Handler;

.field public homeIconImg:Landroid/widget/LinearLayout;

.field public mAnimIcon:Landroid/view/View;

.field public mRecentsCardContainer:Landroid/widget/LinearLayout;

.field public mRecentsFirstCardIconView:Landroid/view/View;

.field public navSubViewBgView:Landroid/view/View;

.field public recentsBgView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d00d7    # @layout/home_demo_layout 'res/layout/home_demo_layout.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "DEMO_TYPE"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "FULLY_SHOW_STEP"

    .line 21
    const/4 v2, 0x1

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result v1

    .line 27
    const-string v3, "IS_FROM_PROVISION"

    .line 28
    const/4 v4, 0x0

    .line 30
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    move-result p1

    .line 34
    const v3, 0x7f0a0401    # @id/home_icon_img

    .line 35
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v3

    .line 41
    check-cast v3, Landroid/widget/LinearLayout;

    .line 42
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/LinearLayout;

    .line 44
    const v3, 0x7f0a00b9    # @id/anim_icon

    .line 46
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Landroid/widget/ImageView;

    .line 53
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 57
    move-result-object v3

    .line 60
    new-instance v5, Lcom/android/systemui/fsgesture/HomeDemoAct$1;

    .line 61
    invoke-direct {v5, p0, v4}, Lcom/android/systemui/fsgesture/HomeDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    .line 63
    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 66
    const v3, 0x7f0a0784    # @id/recents_bg_view

    .line 69
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v3

    .line 75
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    .line 76
    const v3, 0x7f0a0785    # @id/recents_card_container

    .line 78
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v3

    .line 84
    check-cast v3, Landroid/widget/LinearLayout;

    .line 85
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 87
    const v3, 0x7f0a0787    # @id/recents_first_card_icon

    .line 89
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v4

    .line 95
    iput-object v4, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 96
    iget-object v4, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 100
    move-result-object v4

    .line 103
    new-instance v5, Lcom/android/systemui/fsgesture/HomeDemoAct$1;

    .line 104
    invoke-direct {v5, p0, v2}, Lcom/android/systemui/fsgesture/HomeDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    .line 106
    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v3

    .line 115
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 116
    const v3, 0x7f0a00c7    # @id/app_bg_view

    .line 118
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v3

    .line 124
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    .line 125
    const v3, 0x7f0a00d1    # @id/app_note_img

    .line 127
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v3

    .line 133
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/view/View;

    .line 134
    const v3, 0x7f0a0683    # @id/navstubview_bg_view

    .line 136
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v3

    .line 142
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    .line 143
    const v3, 0x7f0a039f    # @id/fsgesture_title_view

    .line 145
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v3

    .line 151
    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 152
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 154
    const-string v3, "DEMO_FULLY_SHOW"

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v3

    .line 161
    const/4 v4, 0x2

    .line 162
    const/4 v5, 0x3

    .line 163
    if-eqz v3, :cond_0

    .line 164
    if-ne v1, v2, :cond_1

    .line 166
    goto :goto_0

    .line 168
    :cond_0
    const-string v2, "DEMO_TO_HOME"

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v2

    .line 174
    if-eqz v2, :cond_1

    .line 175
    :goto_0
    move v2, v4

    .line 177
    goto :goto_1

    .line 178
    :cond_1
    move v2, v5

    .line 179
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 180
    invoke-virtual {v3, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 185
    new-instance v6, Lcom/android/systemui/fsgesture/HomeDemoAct$3;

    .line 187
    invoke-direct {v6, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    .line 189
    iget-object v3, v3, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 192
    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 199
    invoke-static {p0, v3}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 201
    const v3, 0x7f0a039e    # @id/fsgesture_swipe_view

    .line 204
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 207
    move-result-object v3

    .line 210
    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 211
    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 213
    const-wide/16 v6, 0x1f4

    .line 215
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    .line 217
    if-ne v2, v5, :cond_3

    .line 219
    new-instance v2, Lcom/android/systemui/fsgesture/HomeDemoAct$4;

    .line 221
    const/4 v4, 0x4

    .line 223
    invoke-direct {v2, p0, v4}, Lcom/android/systemui/fsgesture/HomeDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    .line 224
    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    goto :goto_2

    .line 230
    :cond_3
    new-instance v2, Lcom/android/systemui/fsgesture/HomeDemoAct$4;

    .line 231
    invoke-direct {v2, p0, v4}, Lcom/android/systemui/fsgesture/HomeDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    .line 233
    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 239
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 241
    move-result-object v2

    .line 244
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 245
    invoke-static {v2}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 247
    move-result-object v2

    .line 250
    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 251
    const v2, 0x7f0a039a    # @id/fsg_nav_view

    .line 253
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object v2

    .line 259
    check-cast v2, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 260
    iput-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 262
    invoke-virtual {v2, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setCurActivity(Landroid/app/Activity;)V

    .line 264
    iget-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 267
    invoke-virtual {v2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoType(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 272
    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setFullyShowStep(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 277
    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setIsFromPro(Z)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 282
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/LinearLayout;

    .line 284
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setHomeIconImg(Landroid/widget/LinearLayout;)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    .line 291
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsBgView(Landroid/view/View;)V

    .line 293
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 298
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsCardContainer(Landroid/widget/LinearLayout;)V

    .line 300
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 303
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsFirstCardIconView(Landroid/view/View;)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    .line 312
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppBgView(Landroid/view/View;)V

    .line 314
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/view/View;

    .line 319
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppNoteImg(Landroid/view/View;)V

    .line 321
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 324
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 326
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 333
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V

    .line 335
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 338
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    .line 340
    invoke-virtual {p1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setBgView(Landroid/view/View;)V

    .line 342
    return-void
    .line 345
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 7
    return-void
    .line 10
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    return-void
    .line 5
.end method
