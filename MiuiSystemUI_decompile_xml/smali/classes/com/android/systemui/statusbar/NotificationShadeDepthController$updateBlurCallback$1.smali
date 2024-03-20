.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->computeBlurAndZoomOut()Lkotlin/Pair;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Number;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 27
    move-result p1

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 31
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    .line 33
    const-wide/16 v1, 0x1000

    .line 35
    const-string/jumbo v3, "shade_blur_radius"

    .line 37
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    .line 45
    move-result-object v1

    .line 48
    const v2, 0x7f0a06b6    # @id/notification_stack_scroller

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 56
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 58
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 60
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 62
    move-result v2

    .line 65
    const/4 v3, 0x1

    .line 66
    if-ne v2, v3, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    .line 69
    move-result v1

    .line 72
    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 75
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mBouncerShowing:Z

    .line 77
    if-nez v1, :cond_0

    .line 79
    move v1, v3

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v1, p2

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 84
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 86
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 88
    move-result v2

    .line 91
    const/4 v4, 0x0

    .line 92
    const-class v5, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 93
    if-eq v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 97
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mBouncerShowing:Z

    .line 99
    if-eqz v2, :cond_2

    .line 101
    :cond_1
    const-class v2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 103
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 108
    check-cast v2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 109
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 111
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 117
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->bouncerContainer$delegate:Lkotlin/Lazy;

    .line 119
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 124
    check-cast v2, Landroid/view/View;

    .line 125
    int-to-float v6, v0

    .line 127
    const v7, 0x3f333333    # 0.7f

    .line 128
    mul-float/2addr v6, v7

    .line 131
    float-to-int v6, v6

    .line 132
    invoke-static {v6, v2}, Lcom/android/keyguard/utils/ViewBlurUtils;->setMiBackgroundBlur(ILandroid/view/View;)V

    .line 133
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 139
    check-cast v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 140
    invoke-virtual {v2, v4}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperRatio(F)V

    .line 142
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 145
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 152
    move-result v2

    .line 155
    xor-int/2addr v2, v3

    .line 156
    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 159
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 161
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    .line 163
    move-result-object v2

    .line 166
    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 167
    int-to-float p2, p2

    .line 169
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    .line 170
    move-result p2

    .line 173
    invoke-virtual {v3, v2, p2, v1}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->applyBlur(Landroid/view/View;FZ)V

    .line 174
    goto/16 :goto_1

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 179
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->needUseKeyguardBouncerBlur:Z

    .line 181
    if-eqz v2, :cond_3

    .line 183
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 188
    check-cast v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 189
    iget-boolean v2, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUseWallpaperBlur:Z

    .line 191
    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 195
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->bouncerContainer$delegate:Lkotlin/Lazy;

    .line 197
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 199
    move-result-object v2

    .line 202
    check-cast v2, Landroid/view/View;

    .line 203
    invoke-static {p2, v2}, Lcom/android/keyguard/utils/ViewBlurUtils;->setMiBackgroundBlur(ILandroid/view/View;)V

    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 208
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 210
    int-to-float v4, v0

    .line 212
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    .line 213
    move-result v2

    .line 216
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    move-result-object v4

    .line 220
    check-cast v4, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 221
    invoke-virtual {v4, v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperRatio(F)V

    .line 223
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 226
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 233
    move-result v2

    .line 236
    xor-int/2addr v2, v3

    .line 237
    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 240
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 242
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    .line 244
    move-result-object v2

    .line 247
    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 248
    int-to-float p2, p2

    .line 250
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    .line 251
    move-result p2

    .line 254
    invoke-virtual {v3, v2, p2, v1}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->applyBlur(Landroid/view/View;FZ)V

    .line 255
    goto :goto_1

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 259
    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->bouncerContainer$delegate:Lkotlin/Lazy;

    .line 261
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 263
    move-result-object v2

    .line 266
    check-cast v2, Landroid/view/View;

    .line 267
    invoke-static {p2, v2}, Lcom/android/keyguard/utils/ViewBlurUtils;->setMiBackgroundBlur(ILandroid/view/View;)V

    .line 269
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 272
    move-result-object p2

    .line 275
    check-cast p2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 276
    invoke-virtual {p2, v4}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperRatio(F)V

    .line 278
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 281
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 283
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    .line 285
    move-result-object p2

    .line 288
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 289
    int-to-float v4, v0

    .line 291
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    .line 292
    move-result v3

    .line 295
    invoke-virtual {v2, p2, v3, v1}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->applyBlur(Landroid/view/View;FZ)V

    .line 296
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 299
    iput v0, p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->lastAppliedBlur:I

    .line 301
    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    .line 303
    iput p1, p2, Lcom/android/systemui/util/WallpaperController;->notificationShadeZoomOut:F

    .line 305
    iget p2, p2, Lcom/android/systemui/util/WallpaperController;->unfoldTransitionZoomOut:F

    .line 307
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 309
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 312
    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    .line 314
    check-cast p2, Ljava/util/ArrayList;

    .line 316
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 318
    move-result-object p2

    .line 321
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    move-result v1

    .line 325
    if-eqz v1, :cond_5

    .line 326
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    move-result-object v1

    .line 331
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

    .line 332
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;->onWallpaperZoomOutChanged(F)V

    .line 334
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;->onBlurRadiusChanged(I)V

    .line 337
    goto :goto_2

    .line 340
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 343
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 345
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 347
    iget p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 349
    if-ne p2, v0, :cond_6

    .line 351
    goto :goto_3

    .line 353
    :cond_6
    iput v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 356
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBgBlurRadiusListener:Ljava/util/function/Consumer;

    .line 359
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mFakeClockShow:Z

    .line 361
    add-int/2addr v0, p0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    move-result-object p0

    .line 367
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 368
    :goto_3
    return-void
    .line 371
.end method
