.class public Lcom/android/keyguard/magazine/LockScreenMagazinePreView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDarkStyle:Z

.field public mDensityDpi:I

.field public mEnterButton:Landroid/widget/TextView;

.field public mFontScale:F

.field public mFullScreenBottomLayout:Landroid/widget/LinearLayout;

.field public mFullScreenContent:Landroid/widget/TextView;

.field public mFullScreenLayout:Landroid/widget/LinearLayout;

.field public mFullScreenLinkButton:Landroid/widget/ImageView;

.field public mFullScreenProvider:Landroid/widget/TextView;

.field public mFullScreenRemoteView:Landroid/widget/RemoteViews;

.field public mFullScreenRemoteViewApplyed:Z

.field public mFullScreenSettingButton:Landroid/widget/ImageView;

.field public mFullScreenSource:Landroid/widget/TextView;

.field public mFullScreenTitle:Landroid/widget/TextView;

.field public mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

.field public mFullScreenTitleLayoutWidth:F

.field public mLocaleList:Ljava/lang/Object;

.field public final mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

.field public mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

.field public mMainLayout:Landroid/widget/LinearLayout;

.field public mMainProvider:Landroid/widget/TextView;

.field public mMainRemoteView:Landroid/widget/RemoteViews;

.field public mMainRemoteViewApplyed:Z

.field public mMainSource:Landroid/widget/TextView;

.field public mMainTitle:Landroid/widget/TextView;

.field public mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

.field public mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

.field public mRemoteFullScreenView:Landroid/view/View;

.field public mRemoteMainLayout:Landroid/widget/LinearLayout;

.field public mRemoteMainView:Landroid/view/View;

.field public mRemotePackageName:Ljava/lang/String;

.field public mRemoteViewYHeight:I

.field public mScreenHeight:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mupdateFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 5
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x8

    .line 8
    const-class v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 10
    if-eqz v0, :cond_2

    .line 12
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 18
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 20
    if-eqz v0, :cond_2

    .line 22
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getProviderText()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 34
    if-eqz v4, :cond_0

    .line 36
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 42
    iget-boolean v4, v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 44
    if-eqz v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getSourceText()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v4

    .line 71
    if-nez v4, :cond_1

    .line 72
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 74
    if-eqz v4, :cond_1

    .line 76
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 81
    check-cast v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 82
    iget-boolean v4, v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 84
    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 98
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    .line 108
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 110
    iget-object v4, v4, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    .line 112
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 114
    move-result v4

    .line 117
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenTitleText()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result v4

    .line 134
    const/4 v5, 0x1

    .line 135
    if-nez v4, :cond_5

    .line 136
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 138
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 143
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 148
    move-result-object v0

    .line 151
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 157
    if-nez v4, :cond_3

    .line 159
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 161
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isSupportLockScreenTextClick:Z

    .line 163
    if-eqz v0, :cond_3

    .line 165
    move v0, v5

    .line 167
    goto :goto_2

    .line 168
    :cond_3
    move v0, v1

    .line 169
    :goto_2
    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 172
    new-instance v4, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    .line 174
    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    .line 176
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButton()V

    .line 182
    goto :goto_3

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenContentText()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    move-result v4

    .line 198
    if-nez v4, :cond_7

    .line 199
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 201
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 206
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    move-result-object v0

    .line 214
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 220
    if-nez v2, :cond_6

    .line 222
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 224
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isSupportLockScreenTextClick:Z

    .line 226
    if-eqz v0, :cond_6

    .line 228
    move v1, v5

    .line 230
    :cond_6
    if-eqz v1, :cond_8

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 233
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    .line 235
    const/4 v2, 0x2

    .line 237
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    goto :goto_4

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 250
    if-nez v0, :cond_9

    .line 252
    goto :goto_7

    .line 254
    :cond_9
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 257
    move-result-object v0

    .line 260
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 261
    if-eqz v1, :cond_a

    .line 263
    const v1, 0x7f13069e    # @string/lock_screen_magazine_preview_fullscreen_bottom_button_global_text 'More'

    .line 265
    goto :goto_5

    .line 268
    :cond_a
    const v1, 0x7f13069f    # @string/lock_screen_magazine_preview_fullscreen_bottom_button_text 'Enter'

    .line 269
    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 275
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 276
    move-result-object v1

    .line 279
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 280
    iget-boolean v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    .line 282
    if-eqz v1, :cond_c

    .line 284
    const-class v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 286
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 288
    move-result-object v1

    .line 291
    check-cast v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 292
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 294
    move-result v1

    .line 297
    if-nez v1, :cond_b

    .line 298
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 300
    iget-object v1, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->btnText:Ljava/lang/String;

    .line 302
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    move-result v1

    .line 307
    if-nez v1, :cond_b

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 310
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->btnText:Ljava/lang/String;

    .line 312
    :cond_b
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 314
    if-eqz v1, :cond_d

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 318
    iget-object v1, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->globalBtnText:Ljava/lang/String;

    .line 320
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    move-result v1

    .line 325
    if-nez v1, :cond_d

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 328
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->globalBtnText:Ljava/lang/String;

    .line 330
    goto :goto_6

    .line 332
    :cond_c
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 335
    move-result-object v0

    .line 338
    const v1, 0x7f1303a4    # @string/download_lock_wallpaper 'Double tap to download Wallpaper Carousel'

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 345
    :cond_d
    :goto_6
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 346
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_7
    return-void
    .line 351
.end method

.method public static -$$Nest$mupdateMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 5
    if-eqz v0, :cond_3

    .line 7
    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 15
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 17
    if-eqz v0, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainTitleText()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/16 v3, 0x8

    .line 30
    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getProviderText()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainTitleText()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    goto :goto_1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainSourceText()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v1

    .line 93
    if-nez v1, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainTitleText()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v1

    .line 103
    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 116
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    move-result v0

    .line 123
    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 128
    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    .line 130
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 132
    move-result p0

    .line 135
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    goto :goto_2

    .line 139
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_3
    :goto_2
    return-void
    .line 145
.end method

.method public static -$$Nest$mupdateRemoteFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteViewApplyed:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteViewApplyed:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyFullScreenRemoteView()V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "reapply RemoteFullScreenView "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    const-string v1, "LockScreenMagazinePreView"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyFullScreenRemoteView()V

    .line 49
    :goto_0
    return-void
    .line 52
.end method

.method public static -$$Nest$mupdateRemoteMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteViewApplyed:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteViewApplyed:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyMainRemoteView()V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "reapply RemoteMainView "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    const-string v1, "LockScreenMagazinePreView"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyMainRemoteView()V

    .line 49
    :goto_0
    return-void
    .line 52
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    .line 3
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    .line 4
    const-class p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    .line 7
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    .line 8
    const-class p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method private getFullScreenContentText()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 21
    const v1, 0x7f13069a    # @string/lock_screen_magazine_default_content 'Daily portion of fresh images'

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 29
    if-eqz v1, :cond_2

    .line 31
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 41
    if-nez v1, :cond_1

    .line 43
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 45
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    .line 67
    :cond_2
    return-object v0
    .line 69
.end method

.method private getFullScreenLayout()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "getFullScreenLayout()  mRemoteFullScreenView:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "LockScreenMagazinePreView"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 33
    return-object p0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 36
    return-object p0
    .line 38
.end method

.method private getFullScreenTitleText()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 21
    const v1, 0x7f13069b    # @string/lock_screen_magazine_default_title 'Wallpaper Carousel'

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 29
    if-nez v1, :cond_1

    .line 31
    return-object v0

    .line 33
    :cond_1
    iget-boolean v2, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z

    .line 34
    if-eqz v2, :cond_2

    .line 36
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 56
    if-nez v1, :cond_4

    .line 57
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 59
    if-nez v1, :cond_3

    .line 61
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 63
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 69
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 85
    :cond_4
    :goto_0
    return-object v0
    .line 87
.end method

.method private getMainSourceText()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 32
    :cond_1
    return-object v1
    .line 34
.end method

.method private getMainTitleText()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 32
    :cond_1
    :goto_0
    return-object v1
    .line 34
.end method

.method private getProviderText()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    .line 32
    :cond_1
    return-object v1
    .line 34
.end method

.method private getSourceText()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 32
    :cond_1
    return-object v1
    .line 34
.end method

.method private getTitleTextWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 31
    move-result p0

    .line 34
    return p0
    .line 35
.end method


# virtual methods
.method public final applyFullScreenRemoteView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    return-void
    .line 34
.end method

.method public final applyMainRemoteView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateMainRemoteViewPosition(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 34
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    return-void
    .line 39
.end method

.method public getMainLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 12
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 15
    return-object p0
    .line 17
.end method

.method public getRemoteViewYHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final initLayoutVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 28
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 30
    if-eqz v0, :cond_0

    .line 32
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 34
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 38
    move-result-object p0

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_0
    return-void
    .line 54
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHasAttachedToWindow:Z

    .line 8
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "package"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    .line 46
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 60
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsCompleteInitiation:Z

    .line 67
    if-nez v0, :cond_0

    .line 69
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 71
    if-nez v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsCompleteInitiation:Z

    .line 76
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->onMagazineResourceInited()V

    .line 78
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 81
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 87
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 94
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 99
    invoke-virtual {v0, p0}, Lcom/miui/systemui/functions/PanelExpansionObserver;->addCallback(Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;)V

    .line 101
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    .line 104
    if-eqz v0, :cond_2

    .line 106
    const-class v0, Lcom/miui/interfaces/SettingsObserver;

    .line 108
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/miui/interfaces/SettingsObserver;

    .line 114
    const-string v1, "lock_wallpaper_provider_authority"

    .line 116
    filled-new-array {v1}, [Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 121
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    .line 122
    invoke-virtual {v0, p0, v1}, Lcom/miui/interfaces/SettingsObserver;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;[Ljava/lang/String;)V

    .line 124
    :cond_2
    return-void
    .line 127
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 5
    move-result-object v0

    .line 8
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 11
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLocaleList:Ljava/lang/Object;

    .line 13
    if-eq v2, v0, :cond_0

    .line 15
    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;

    .line 17
    invoke-direct {v2, p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 22
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLocaleList:Ljava/lang/Object;

    .line 25
    :cond_0
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFontScale:F

    .line 27
    cmpl-float v0, v0, v1

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateFontScale()V

    .line 33
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButton()V

    .line 36
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFontScale:F

    .line 39
    :cond_1
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDensityDpi:I

    .line 41
    if-eq v0, p1, :cond_c

    .line 43
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateFontScale()V

    .line 45
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 48
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 54
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 56
    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 60
    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 64
    if-ne v0, v3, :cond_2

    .line 66
    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v0, v2

    .line 70
    :goto_0
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v3

    .line 82
    const v4, 0x7f070434    # @dimen/keyguard_affordance_fixed_height '105.0dp'

    .line 83
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 86
    move-result v3

    .line 89
    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 93
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 98
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v3

    .line 109
    const v4, 0x7f07061f    # @dimen/lock_screen_magazine_preview_main_title_margin_start_end '29.1dp'

    .line 110
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 113
    move-result v3

    .line 116
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v5

    .line 120
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 121
    move-result v4

    .line 124
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v5

    .line 128
    const v6, 0x7f07061e    # @dimen/lock_screen_magazine_preview_main_title_margin_bottom '5.0dp'

    .line 129
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 132
    move-result v5

    .line 135
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object v3

    .line 155
    const v4, 0x7f07061d    # @dimen/lock_screen_magazine_preview_main_provider_margin_start '29.1dp'

    .line 156
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 159
    move-result v3

    .line 162
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 166
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateMainRemoteViewPosition(Landroid/view/View;)V

    .line 174
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    .line 177
    move-result-object v0

    .line 180
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 181
    if-ne v0, v3, :cond_5

    .line 183
    move v0, v1

    .line 185
    goto :goto_2

    .line 186
    :cond_5
    move v0, v2

    .line 187
    :goto_2
    if-eqz v0, :cond_7

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 190
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 192
    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 196
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 204
    move-result-object v3

    .line 207
    const v4, 0x7f070619    # @dimen/lock_screen_magazine_preview_fullscreen_setting_margin_top '44.19dp'

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 211
    move-result v3

    .line 214
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 215
    move-result-object v4

    .line 218
    const v5, 0x7f070618    # @dimen/lock_screen_magazine_preview_fullscreen_setting_margin_end '20.55dp'

    .line 219
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 222
    move-result v4

    .line 225
    invoke-virtual {v0, v2, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 229
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 234
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 242
    move-result-object v3

    .line 245
    const v4, 0x7f070615    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_title_layout_link_width_height '24.0dp'

    .line 246
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 249
    move-result v3

    .line 252
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 253
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 255
    move-result-object v3

    .line 258
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 259
    move-result v3

    .line 262
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 263
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 265
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenBottomLayoutPadding()V

    .line 270
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenTitleLayoutMargin()V

    .line 273
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenContentMargin()V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 279
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 281
    move-result-object v0

    .line 284
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v3

    .line 290
    const v4, 0x7f0705fe    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_button_margin_start '1.8dp'

    .line 291
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 294
    move-result v3

    .line 297
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 298
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 301
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenButtonPadding()V

    .line 306
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    .line 309
    move-result-object v0

    .line 312
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 313
    if-ne v0, v3, :cond_8

    .line 315
    goto :goto_3

    .line 317
    :cond_8
    move v1, v2

    .line 318
    :goto_3
    if-eqz v1, :cond_b

    .line 319
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 321
    if-nez v0, :cond_a

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 325
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 327
    if-eqz v0, :cond_a

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 331
    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    .line 333
    if-eqz v1, :cond_9

    .line 335
    const v1, 0x7f08129a    # @drawable/lock_screen_magazine_pre_settings_dark 'res/drawable-440dpi/lock_screen_magazine_pre_settings_dark.webp'

    .line 337
    goto :goto_4

    .line 340
    :cond_9
    const v1, 0x7f081299    # @drawable/lock_screen_magazine_pre_settings 'res/drawable-440dpi/lock_screen_magazine_pre_settings.webp'

    .line 341
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonDrawableResource()V

    .line 347
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 350
    const v1, 0x7f081295    # @drawable/lock_screen_magazine_des_more_btn_bg 'res/drawable/lock_screen_magazine_des_more_btn_bg.xml'

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 355
    :cond_b
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDensityDpi:I

    .line 358
    :cond_c
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mWindowManager:Landroid/view/WindowManager;

    .line 360
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 362
    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 366
    move-result-object p1

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 370
    move-result p1

    .line 373
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    .line 374
    return-void
    .line 376
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHasAttachedToWindow:Z

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 31
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 39
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 44
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 49
    iget-object v1, v0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 51
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, v0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v1

    .line 59
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    .line 60
    if-eqz v0, :cond_0

    .line 62
    const-class v0, Lcom/miui/interfaces/SettingsObserver;

    .line 64
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/miui/interfaces/SettingsObserver;

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    .line 72
    invoke-virtual {v0, p0}, Lcom/miui/interfaces/SettingsObserver;->removeCallback(Lcom/miui/interfaces/SettingsObserver$Callback;)V

    .line 74
    :cond_0
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v1

    .line 79
    throw p0
    .line 80
.end method

.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0520    # @id/lock_screen_magazine_preview_fullscreen_layout

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 14
    const v0, 0x7f0a0521    # @id/lock_screen_magazine_preview_fullscreen_setting

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0a051d    # @id/lock_screen_magazine_preview_fullscreen_bottom_title_layout

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 34
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    .line 36
    const v0, 0x7f0a051f    # @id/lock_screen_magazine_preview_fullscreen_bottom_title_layout_title

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a051e    # @id/lock_screen_magazine_preview_fullscreen_bottom_title_layout_link

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0a051a    # @id/lock_screen_magazine_preview_fullscreen_bottom_layout

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenBottomLayout:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f0a0519    # @id/lock_screen_magazine_preview_fullscreen_bottom_content

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0518    # @id/lock_screen_magazine_preview_fullscreen_bottom_button

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .line 89
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0a051b    # @id/lock_screen_magazine_preview_fullscreen_bottom_provider

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a051c    # @id/lock_screen_magazine_preview_fullscreen_bottom_source

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0a0522    # @id/lock_screen_magazine_preview_main_layout

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0a0525    # @id/lock_screen_magazine_preview_main_title

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0a0523    # @id/lock_screen_magazine_preview_main_provider

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 143
    check-cast v0, Landroid/widget/TextView;

    .line 144
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0a0524    # @id/lock_screen_magazine_preview_main_source

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 154
    check-cast v0, Landroid/widget/TextView;

    .line 155
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0a0527    # @id/lock_screen_magazine_preview_remote_main_layout

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 165
    check-cast v0, Landroid/widget/LinearLayout;

    .line 166
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 168
    const v0, 0x7f0a0526    # @id/lock_screen_magazine_preview_remote_fullscreen_layout

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v0

    .line 176
    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 179
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 181
    move-result-object v0

    .line 184
    const-string/jumbo v1, "window"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 191
    check-cast v0, Landroid/view/WindowManager;

    .line 192
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mWindowManager:Landroid/view/WindowManager;

    .line 194
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 196
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 200
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 204
    move-result v0

    .line 207
    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    .line 208
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->initLayoutVisibility()V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    .line 213
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;

    .line 215
    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenTitleLayoutMargin()V

    .line 223
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 226
    const v1, 0x3c23d70a    # 0.01f

    .line 228
    const/4 v2, 0x0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 234
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 236
    const/16 v4, 0x28

    .line 238
    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 240
    filled-new-array {v3}, [Landroid/text/InputFilter;

    .line 243
    move-result-object v3

    .line 246
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 250
    const-string/jumbo v3, "sans-serif-medium"

    .line 252
    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 255
    move-result-object v3

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 264
    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 268
    const-string v3, "miui-bold"

    .line 270
    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 272
    move-result-object v3

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 279
    const v3, 0x3dcccccd    # 0.1f

    .line 281
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 287
    new-instance v3, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    .line 289
    invoke-direct {v3, p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    .line 291
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 297
    new-instance v3, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;

    .line 299
    invoke-direct {v3, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;-><init>(I)V

    .line 301
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenBottomLayoutPadding()V

    .line 307
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 310
    const/high16 v3, 0x3f800000    # 1.0f

    .line 312
    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 316
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 318
    const/16 v4, 0x96

    .line 320
    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 322
    filled-new-array {v2}, [Landroid/text/InputFilter;

    .line 325
    move-result-object v2

    .line 328
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 337
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 339
    move-result-object v1

    .line 342
    const v2, 0x7f0601c4    # @color/lock_screen_magazine_preview_fullscreen_global_bottom_content_text_color '#ffffff'

    .line 343
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 346
    move-result v1

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 353
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 355
    move-result-object v1

    .line 358
    const v2, 0x7f070607    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_global_content_line_spacing_extra '0.7dp'

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 362
    move-result v1

    .line 365
    int-to-float v1, v1

    .line 366
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 367
    goto :goto_1

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 371
    const-string v1, "miui-light"

    .line 373
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 375
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 382
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 384
    move-result-object v1

    .line 387
    const v2, 0x7f070603    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_content_line_spacing_extra '2.4sp'

    .line 388
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 391
    move-result v1

    .line 394
    int-to-float v1, v1

    .line 395
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 396
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenContentMargin()V

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 402
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 404
    move-result-object v1

    .line 407
    const v2, 0x7f13007a    # @string/accessibility_enter_lock_wallpaper 'Tap to open Wallpaper Carousel'

    .line 408
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 411
    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 418
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    .line 420
    const/4 v2, 0x3

    .line 422
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    .line 423
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 429
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;

    .line 431
    const/4 v2, 0x1

    .line 433
    invoke-direct {v1, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;-><init>(I)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenButtonPadding()V

    .line 440
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateFontScale()V

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 446
    iget-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 448
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 450
    iput-object p0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 452
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setButtonClickListener(Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;)V

    .line 456
    return-void
    .line 459
.end method

.method public setButtonClickListener(Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setDarkStyle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const p1, 0x7f08129a    # @drawable/lock_screen_magazine_pre_settings_dark 'res/drawable-440dpi/lock_screen_magazine_pre_settings_dark.webp'

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    const p1, 0x7f081299    # @drawable/lock_screen_magazine_pre_settings 'res/drawable-440dpi/lock_screen_magazine_pre_settings.webp'

    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutDarkStyle()V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final setFullScreenBottomLayoutPadding()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenBottomLayout:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f07060f    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_padding_start '20.88dp'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v2

    .line 18
    const v3, 0x7f070610    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_padding_top '132.63dp'

    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 22
    move-result v2

    .line 25
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v3

    .line 33
    const v4, 0x7f07060a    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_global_padding_end '20.88dp'

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v3

    .line 45
    const v4, 0x7f07060e    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_padding_end '83.88dp'

    .line 46
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 49
    move-result v3

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p0

    .line 56
    const v4, 0x7f07060d    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_padding_bottom '44.13dp'

    .line 57
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 60
    move-result p0

    .line 63
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 64
    return-void
    .line 67
.end method

.method public final setFullScreenButtonPadding()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070601    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_button_padding_top '10.55dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    move-result v0

    .line 12
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x7f070606    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_global_button_padding_start_end '30.3dp'

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 24
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 32
    const v2, 0x7f070600    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_button_padding_start_end '51.64dp'

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    move-result v1

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 40
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 42
    if-eqz v3, :cond_1

    .line 44
    move p0, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p0

    .line 51
    const v3, 0x7f0705ff    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_button_padding_bottom '12.73dp'

    .line 52
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    move-result p0

    .line 58
    :goto_1
    invoke-virtual {v2, v1, v0, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    return-void
    .line 62
.end method

.method public final setFullScreenContentMargin()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 17
    const v2, 0x7f070608    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_global_content_margin_bottom '21.82dp'

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 29
    const v2, 0x7f070604    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_content_margin_bottom '31.24dp'

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 33
    move-result v1

    .line 36
    :goto_0
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
    .line 46
.end method

.method public setFullScreenLayoutAlpha(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    return-void
    .line 9
.end method

.method public setFullScreenLayoutVisible(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
    .line 9
.end method

.method public final setFullScreenTitleLayoutMargin()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 17
    const v2, 0x7f07060b    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_global_title_layout_margin_bottom '5.0dp'

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 29
    const v2, 0x7f070616    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_title_layout_margin_bottom '7.49dp'

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 33
    move-result v1

    .line 36
    :goto_0
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
    .line 46
.end method

.method public setMainLayoutAlpha(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    return-void
    .line 9
.end method

.method public setMainLayoutDarkStyle()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 26
    const v1, 0x7f06039d    # @color/miui_common_unlock_screen_common_time_dark_text_color '#b3000000'

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 30
    move-result v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, -0x1

    .line 35
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 46
    iget-object v1, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    :cond_2
    return-void
    .line 61
.end method

.method public setMainLayoutTranslationY(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    return-void
    .line 9
.end method

.method public setMainLayoutVisible(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
    .line 9
.end method

.method public final updateFontScale()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v3

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 21
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 32
    const v4, 0x7f070620    # @dimen/lock_screen_magazine_preview_main_title_text_size '16.0sp'

    .line 33
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 49
    const v4, 0x7f07061a    # @dimen/lock_screen_magazine_preview_main_content_text_size '13.09sp'

    .line 50
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result v1

    .line 56
    int-to-float v1, v1

    .line 57
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result v1

    .line 70
    int-to-float v1, v1

    .line 71
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    .line 75
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 79
    if-ne v0, v1, :cond_2

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    move v2, v3

    .line 84
    :goto_1
    if-eqz v2, :cond_6

    .line 85
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 87
    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 91
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v1

    .line 102
    const v2, 0x7f070611    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_provider_text_size '13.09sp'

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    move-result v1

    .line 109
    int-to-float v1, v1

    .line 110
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object v1

    .line 119
    const v2, 0x7f070613    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_source_text_size '13.09sp'

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    move-result v1

    .line 126
    int-to-float v1, v1

    .line 127
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object v1

    .line 136
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 137
    if-eqz v2, :cond_4

    .line 139
    const v2, 0x7f070614    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_title_layout_global_title_text_size '16.0sp'

    .line 141
    goto :goto_2

    .line 144
    :cond_4
    const v2, 0x7f070617    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_title_layout_title_text_size '21.8sp'

    .line 145
    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    move-result v1

    .line 151
    int-to-float v1, v1

    .line 152
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v1

    .line 161
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 162
    if-eqz v2, :cond_5

    .line 164
    const v2, 0x7f070609    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_global_content_text_size '14.0sp'

    .line 166
    goto :goto_3

    .line 169
    :cond_5
    const v2, 0x7f070605    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_content_text_size '13.09sp'

    .line 170
    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    move-result v1

    .line 176
    int-to-float v1, v1

    .line 177
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    .line 181
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object p0

    .line 186
    const v1, 0x7f070602    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_button_text_size '13.09sp'

    .line 187
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 190
    move-result p0

    .line 193
    int-to-float p0, p0

    .line 194
    invoke-virtual {v0, v3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    :cond_6
    return-void
    .line 198
.end method

.method public final updateLinkButton()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 31
    const v1, 0x7f070615    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_title_layout_link_width_height '24.0dp'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 35
    move-result v0

    .line 38
    int-to-float v0, v0

    .line 39
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 43
    const v3, 0x7f07060c    # @dimen/lock_screen_magazine_preview_fullscreen_bottom_link_margin_start '7.0dp'

    .line 44
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result v1

    .line 50
    int-to-float v1, v1

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getTitleTextWidth()I

    .line 52
    move-result v3

    .line 55
    add-float v4, v0, v1

    .line 56
    add-int/lit8 v3, v3, 0x14

    .line 58
    int-to-float v5, v3

    .line 60
    iget v6, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayoutWidth:F

    .line 61
    sub-float v7, v6, v4

    .line 63
    cmpl-float v8, v5, v7

    .line 65
    if-lez v8, :cond_1

    .line 67
    float-to-int v1, v7

    .line 69
    float-to-int v3, v4

    .line 70
    sub-float/2addr v6, v0

    .line 71
    float-to-int v0, v6

    .line 72
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonLayoutParams(III)V

    .line 73
    goto :goto_1

    .line 76
    :cond_1
    add-float/2addr v5, v1

    .line 77
    float-to-int v0, v5

    .line 78
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonLayoutParams(III)V

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonDrawableResource()V

    .line 87
    goto :goto_2

    .line 90
    :cond_2
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayoutWidth:F

    .line 91
    float-to-int v0, v0

    .line 93
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonLayoutParams(III)V

    .line 94
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 97
    const/16 v0, 0x8

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_3
    :goto_2
    return-void
    .line 104
.end method

.method public final updateLinkButtonDrawableResource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->linkType:I

    .line 7
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 12
    const v0, 0x7f081298    # @drawable/lock_screen_magazine_pre_link 'res/drawable-440dpi/lock_screen_magazine_pre_link.webp'

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f08199e    # @drawable/wallpaper_play 'res/drawable-xhdpi/wallpaper_play.webp'

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    :cond_2
    :goto_0
    return-void
    .line 32
.end method

.method public final updateLinkButtonLayoutParams(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 10
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    return-void
    .line 34
.end method

.method public final updateMainRemoteViewPosition(Landroid/view/View;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemotePackageName:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 22
    move-result-object v1

    .line 25
    const-string/jumbo v2, "wallpaper_title"

    .line 26
    const-string v3, "id"

    .line 29
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 38
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Landroid/view/View;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v0, "updateRemoteTextView "

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v0, "LockScreenMagazinePreView"

    .line 57
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void
    .line 62
.end method
