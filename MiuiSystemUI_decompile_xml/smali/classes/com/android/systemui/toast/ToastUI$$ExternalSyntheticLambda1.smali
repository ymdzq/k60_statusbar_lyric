.class public final synthetic Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/ToastUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/app/ITransientNotificationCallback;

.field public final synthetic f$6:Landroid/os/IBinder;

.field public final synthetic f$7:Landroid/os/IBinder;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/ToastUI;IILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/ITransientNotificationCallback;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/toast/ToastUI;

    .line 5
    iput p2, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$5:Landroid/app/ITransientNotificationCallback;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$6:Landroid/os/IBinder;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$7:Landroid/os/IBinder;

    .line 19
    iput p9, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$8:I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/toast/ToastUI;

    .line 4
    iget v2, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    iget v3, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    iget-object v10, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    .line 10
    iget-object v11, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 12
    iget-object v12, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$5:Landroid/app/ITransientNotificationCallback;

    .line 14
    iget-object v13, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$6:Landroid/os/IBinder;

    .line 16
    iget-object v15, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$7:Landroid/os/IBinder;

    .line 18
    iget v0, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->f$8:I

    .line 20
    const/4 v14, 0x0

    .line 22
    iput-object v14, v1, Lcom/android/systemui/toast/ToastUI;->mPendingToastToken:Landroid/os/IBinder;

    .line 23
    iput-object v14, v1, Lcom/android/systemui/toast/ToastUI;->mPendingToastPkg:Ljava/lang/String;

    .line 25
    const v4, 0x186a0

    .line 27
    div-int v4, v2, v4

    .line 30
    const/16 v5, 0x3e7

    .line 32
    if-ne v4, v5, :cond_0

    .line 34
    new-instance v4, Landroid/os/UserHandle;

    .line 36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 38
    move-result v5

    .line 41
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 46
    move-result-object v4

    .line 49
    :goto_0
    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    .line 50
    const/4 v9, 0x0

    .line 52
    invoke-virtual {v5, v4, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 53
    move-result-object v6

    .line 56
    const-class v7, Landroid/hardware/display/DisplayManager;

    .line 57
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object v5

    .line 62
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 63
    invoke-virtual {v5, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 65
    move-result-object v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    goto/16 :goto_3

    .line 71
    :cond_1
    invoke-virtual {v6, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 73
    move-result-object v3

    .line 76
    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mToastFactory:Lcom/android/systemui/toast/ToastFactory;

    .line 77
    iget-object v6, v1, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 81
    move-result v8

    .line 84
    iget v7, v1, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    .line 85
    move-object v4, v5

    .line 87
    move-object v5, v6

    .line 88
    move-object v6, v10

    .line 89
    move/from16 v16, v7

    .line 90
    move-object v7, v11

    .line 92
    move/from16 v17, v9

    .line 93
    move/from16 v9, v16

    .line 95
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/toast/ToastFactory;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcom/android/systemui/toast/SystemUIToast;

    .line 97
    move-result-object v4

    .line 100
    iput-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 101
    iget-object v5, v4, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 103
    const/4 v6, 0x1

    .line 105
    if-eqz v5, :cond_3

    .line 106
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    .line 108
    if-eqz v5, :cond_2

    .line 110
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 112
    if-eqz v5, :cond_2

    .line 114
    sget-object v5, Lcom/android/systemui/toast/ToastDefaultAnimation;->sX:Landroid/animation/ValueAnimator;

    .line 116
    new-instance v7, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;

    .line 118
    invoke-direct {v7, v1, v4, v6}, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/ToastUI;Lcom/android/systemui/toast/SystemUIToast;I)V

    .line 120
    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    :cond_2
    iget-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 126
    iget-object v4, v4, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 128
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 130
    :cond_3
    iput-object v12, v1, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 133
    new-instance v4, Landroid/widget/ToastPresenter;

    .line 135
    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mIAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 137
    iget-object v7, v1, Lcom/android/systemui/toast/ToastUI;->mNotificationManager:Landroid/app/INotificationManager;

    .line 139
    invoke-direct {v4, v3, v5, v7, v11}, Landroid/widget/ToastPresenter;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V

    .line 141
    iput-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 144
    invoke-virtual {v4}, Landroid/widget/ToastPresenter;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 146
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 150
    const-string v3, "com.android.systemui"

    .line 153
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v3

    .line 158
    if-nez v3, :cond_4

    .line 159
    const-string v3, "com.miui.aod"

    .line 161
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v3

    .line 166
    if-eqz v3, :cond_5

    .line 167
    :cond_4
    iget-object v3, v1, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 169
    invoke-virtual {v3}, Landroid/widget/ToastPresenter;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 171
    move-result-object v3

    .line 174
    const/16 v4, 0x7d6

    .line 175
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 177
    move-object v13, v14

    .line 179
    :cond_5
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 183
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 187
    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mToastLogger:Lcom/android/systemui/toast/ToastLogger;

    .line 188
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    sget-object v7, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 193
    sget-object v8, Lcom/android/systemui/toast/ToastLogger$logOnShowToast$2;->INSTANCE:Lcom/android/systemui/toast/ToastLogger$logOnShowToast$2;

    .line 195
    iget-object v5, v5, Lcom/android/systemui/toast/ToastLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 197
    const-string v9, "ToastLog"

    .line 199
    invoke-virtual {v5, v9, v7, v8, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 201
    move-result-object v7

    .line 204
    invoke-interface {v7, v2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 205
    invoke-interface {v7, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 208
    invoke-interface {v7, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 211
    invoke-interface {v7, v4}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 217
    iget-object v14, v1, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 220
    iget-object v2, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 222
    iget-object v3, v2, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 224
    invoke-virtual {v2}, Lcom/android/systemui/toast/SystemUIToast;->getGravity()Ljava/lang/Integer;

    .line 226
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 230
    move-result v19

    .line 233
    iget-object v2, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 234
    invoke-virtual {v2}, Lcom/android/systemui/toast/SystemUIToast;->getXOffset()Ljava/lang/Integer;

    .line 236
    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 240
    move-result v20

    .line 243
    iget-object v2, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 244
    invoke-virtual {v2}, Lcom/android/systemui/toast/SystemUIToast;->getYOffset()Ljava/lang/Integer;

    .line 246
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 250
    move-result v21

    .line 253
    iget-object v2, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 254
    invoke-virtual {v2}, Lcom/android/systemui/toast/SystemUIToast;->getHorizontalMargin()Ljava/lang/Integer;

    .line 256
    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 260
    move-result v2

    .line 263
    int-to-float v2, v2

    .line 264
    iget-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 265
    invoke-virtual {v4}, Lcom/android/systemui/toast/SystemUIToast;->getVerticalMargin()Ljava/lang/Integer;

    .line 267
    move-result-object v4

    .line 270
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 271
    move-result v4

    .line 274
    int-to-float v4, v4

    .line 275
    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 276
    iget-object v1, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 278
    iget-object v7, v1, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 280
    if-nez v7, :cond_7

    .line 282
    iget-object v1, v1, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 284
    if-eqz v1, :cond_6

    .line 286
    goto :goto_1

    .line 288
    :cond_6
    move/from16 v25, v17

    .line 289
    goto :goto_2

    .line 291
    :cond_7
    :goto_1
    move/from16 v25, v6

    .line 292
    :goto_2
    move-object v1, v15

    .line 294
    move-object v15, v3

    .line 295
    move-object/from16 v16, v1

    .line 296
    move-object/from16 v17, v13

    .line 298
    move/from16 v18, v0

    .line 300
    move/from16 v22, v2

    .line 302
    move/from16 v23, v4

    .line 304
    move-object/from16 v24, v5

    .line 306
    invoke-virtual/range {v14 .. v25}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V

    .line 308
    :goto_3
    return-void
    .line 311
.end method
