.class Lmiuix/appcompat/app/AlertController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$4;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;IIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p0

    .line 4
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$4;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 6
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 10
    move-result v3

    .line 13
    iput-boolean v3, v1, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 14
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 16
    int-to-float v4, v3

    .line 18
    const/high16 v5, 0x3f800000    # 1.0f

    .line 19
    mul-float/2addr v4, v5

    .line 21
    iget v6, v1, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 22
    int-to-float v6, v6

    .line 24
    div-float/2addr v4, v6

    .line 25
    cmpl-float v5, v4, v5

    .line 26
    if-eqz v5, :cond_0

    .line 28
    iput v3, v1, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 30
    :cond_0
    iget-boolean v3, v1, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 32
    const-string v6, "AlertController"

    .line 34
    if-eqz v3, :cond_1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    const-string v7, "onConfigurationChangednewDensityDpi "

    .line 40
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget v7, v1, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 45
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v7, " densityScale "

    .line 50
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 61
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iget-boolean v3, v1, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 65
    const/4 v8, 0x0

    .line 67
    if-eqz v3, :cond_c

    .line 68
    iget-object v3, v1, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    .line 70
    iget v9, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 72
    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 74
    if-eq v9, v10, :cond_2

    .line 76
    const/4 v9, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move v9, v8

    .line 80
    :goto_0
    iget v10, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 81
    iget v11, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 83
    if-eq v10, v11, :cond_3

    .line 85
    const/4 v10, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v10, v8

    .line 89
    :goto_1
    iget v11, v3, Landroid/content/res/Configuration;->orientation:I

    .line 90
    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    .line 92
    if-eq v11, v12, :cond_4

    .line 94
    const/4 v11, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move v11, v8

    .line 98
    :goto_2
    iget v12, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 99
    iget v13, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 101
    if-eq v12, v13, :cond_5

    .line 103
    const/4 v12, 0x1

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    move v12, v8

    .line 107
    :goto_3
    iget v13, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 108
    iget v14, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 110
    if-eq v13, v14, :cond_6

    .line 112
    const/4 v13, 0x1

    .line 114
    goto :goto_4

    .line 115
    :cond_6
    move v13, v8

    .line 116
    :goto_4
    iget v14, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 117
    iget v15, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 119
    if-eq v14, v15, :cond_7

    .line 121
    const/4 v14, 0x1

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    move v14, v8

    .line 125
    :goto_5
    iget v15, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 126
    iget v7, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 128
    cmpl-float v7, v15, v7

    .line 130
    if-eqz v7, :cond_8

    .line 132
    const/4 v7, 0x1

    .line 134
    goto :goto_6

    .line 135
    :cond_8
    move v7, v8

    .line 136
    :goto_6
    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 137
    iget v15, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 139
    if-eq v3, v15, :cond_9

    .line 141
    const/4 v3, 0x1

    .line 143
    goto :goto_7

    .line 144
    :cond_9
    move v3, v8

    .line 145
    :goto_7
    if-nez v9, :cond_b

    .line 146
    if-nez v10, :cond_b

    .line 148
    if-nez v11, :cond_b

    .line 150
    if-nez v12, :cond_b

    .line 152
    if-nez v13, :cond_b

    .line 154
    if-nez v7, :cond_b

    .line 156
    if-nez v14, :cond_b

    .line 158
    if-eqz v3, :cond_a

    .line 160
    goto :goto_8

    .line 162
    :cond_a
    move v3, v8

    .line 163
    goto :goto_9

    .line 164
    :cond_b
    :goto_8
    const/4 v3, 0x1

    .line 165
    :goto_9
    if-nez v3, :cond_c

    .line 166
    goto/16 :goto_c

    .line 168
    :cond_c
    iput-boolean v8, v1, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 170
    const/4 v3, -0x1

    .line 172
    iput v3, v1, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 173
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 175
    iget-boolean v0, v1, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 178
    if-eqz v0, :cond_d

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    const-string v3, "onConfigurationChanged mRootViewSize "

    .line 184
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v3, v1, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 197
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 201
    move-result-object v0

    .line 204
    iget-object v3, v1, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 205
    if-ne v3, v0, :cond_e

    .line 207
    const/4 v7, 0x1

    .line 209
    goto :goto_a

    .line 210
    :cond_e
    move v7, v8

    .line 211
    :goto_a
    if-nez v7, :cond_f

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "dialog is created in thread:"

    .line 216
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", but onConfigurationChanged is called from different thread:"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 229
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ", so this onConfigurationChanged call should be ignore"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 244
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_c

    .line 248
    :cond_f
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 249
    move-result v0

    .line 252
    iget-object v3, v1, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 253
    iget-object v6, v1, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 255
    if-eqz v0, :cond_10

    .line 257
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 259
    move-result-object v0

    .line 262
    invoke-virtual {v0, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 263
    :cond_10
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 266
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 270
    move-result v0

    .line 273
    if-eqz v0, :cond_13

    .line 274
    if-eqz v5, :cond_11

    .line 276
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 278
    move-result-object v0

    .line 281
    const v5, 0x7f070a89    # @dimen/miuix_appcompat_dialog_max_width '370.0dp'

    .line 282
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 285
    move-result v0

    .line 288
    iput v0, v1, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    .line 289
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 291
    move-result-object v0

    .line 294
    const v2, 0x7f070a8a    # @dimen/miuix_appcompat_dialog_max_width_land '576.0dp'

    .line 295
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 298
    move-result v0

    .line 301
    iput v0, v1, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 302
    :cond_11
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 304
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 307
    move-result v0

    .line 310
    if-eqz v0, :cond_12

    .line 311
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    .line 313
    goto :goto_b

    .line 316
    :cond_12
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    .line 317
    :goto_b
    invoke-virtual {v1, v4, v8}, Lmiuix/appcompat/app/AlertController;->setupView(FZ)V

    .line 320
    :cond_13
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 323
    move-result v0

    .line 326
    if-eqz v0, :cond_14

    .line 327
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 329
    move-result-object v0

    .line 332
    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 333
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 336
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 340
    move-result-object v0

    .line 343
    if-eqz v0, :cond_14

    .line 344
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    .line 346
    :cond_14
    iget-object v0, v1, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 349
    new-instance v2, Lmiuix/appcompat/app/AlertController$9;

    .line 351
    invoke-direct {v2, v1}, Lmiuix/appcompat/app/AlertController$9;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 353
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 356
    :goto_c
    return-void
    .line 359
.end method
