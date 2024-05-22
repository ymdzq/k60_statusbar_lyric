.class public final Lcom/android/systemui/qs/MiuiQSSecurityFooter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mCallback:Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;

.field public final mContext:Landroid/content/Context;

.field public mFooterIconId:I

.field public final mFooterText:Landroid/widget/TextView;

.field public mFooterTextContent:Ljava/lang/CharSequence;

.field public final mHandler:Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

.field public mHost:Lcom/android/systemui/qs/QSTileHost;

.field public mIsVisible:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPrimaryFooterIcon:Landroid/widget/ImageView;

.field public mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

.field public final mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

.field public final mRootView:Landroid/view/View;

.field public final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final mUm:Landroid/os/UserManager;

.field public final mUpdateDisplayState:Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

.field public final mUpdateIcon:Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;


# direct methods
.method public static -$$Nest$mhandleRefreshState(Lcom/android/systemui/qs/MiuiQSSecurityFooter;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 8
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mUm:Landroid/os/UserManager;

    .line 12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    move-result v3

    .line 17
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 18
    move-result-object v2

    .line 21
    iget-object v3, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 24
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    move v2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v2, v5

    .line 42
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 43
    check-cast v3, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 45
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile()Z

    .line 47
    move-result v3

    .line 50
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 51
    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 53
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    .line 55
    move-result v6

    .line 58
    iget-object v7, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 59
    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 61
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    .line 63
    move-result v7

    .line 66
    iget-object v8, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 67
    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 69
    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 71
    const/4 v9, 0x0

    .line 73
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    .line 74
    move-result v8

    .line 77
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 78
    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 80
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 82
    move-result v10

    .line 85
    iget-object v11, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 86
    check-cast v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 88
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    .line 90
    move-result-object v11

    .line 93
    iget-object v12, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 94
    check-cast v12, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 96
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    .line 98
    move-result-object v12

    .line 101
    iget-object v13, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 102
    check-cast v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 104
    iget-object v13, v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 106
    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 108
    move-result-object v13

    .line 111
    iget-object v14, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 112
    check-cast v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 114
    iget v15, v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 116
    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    .line 118
    move-result v15

    .line 121
    const/16 v9, -0x2710

    .line 122
    if-ne v15, v9, :cond_1

    .line 124
    const/4 v9, 0x0

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    iget-object v9, v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 128
    invoke-virtual {v9, v15}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    .line 130
    move-result-object v9

    .line 133
    :goto_1
    iget-object v14, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 134
    check-cast v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 136
    iget-object v14, v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 138
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 140
    move-result v14

    .line 143
    if-eqz v1, :cond_2

    .line 144
    if-eqz v2, :cond_4

    .line 146
    :cond_2
    if-nez v6, :cond_4

    .line 148
    if-nez v7, :cond_4

    .line 150
    if-nez v12, :cond_4

    .line 152
    if-eqz v14, :cond_3

    .line 154
    goto :goto_2

    .line 156
    :cond_3
    move v2, v5

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    :goto_2
    move v2, v4

    .line 159
    :goto_3
    iput-boolean v2, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mIsVisible:Z

    .line 160
    const v2, 0x7f130999    # @string/quick_settings_disclosure_management 'This device belongs to your organization'

    .line 162
    const v15, 0x7f13099f    # @string/quick_settings_disclosure_named_management 'This device belongs to %1$s'

    .line 165
    if-nez v1, :cond_e

    .line 168
    if-eqz v7, :cond_6

    .line 170
    if-nez v9, :cond_5

    .line 172
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 174
    const v2, 0x7f130996    # @string/quick_settings_disclosure_managed_profile_monitoring 'Your organization may monitor network traffic in your work profile'

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 182
    goto/16 :goto_8

    .line 183
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 185
    const v2, 0x7f13099e    # @string/quick_settings_disclosure_named_managed_profile_monitoring '%1$s may monitor network traffic in your work profile'

    .line 187
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 190
    move-result-object v3

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 197
    goto/16 :goto_8

    .line 198
    :cond_6
    if-eqz v6, :cond_7

    .line 200
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 202
    const v2, 0x7f13099d    # @string/quick_settings_disclosure_monitoring 'Network may be monitored'

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 210
    goto/16 :goto_8

    .line 211
    :cond_7
    if-eqz v11, :cond_8

    .line 213
    if-eqz v12, :cond_8

    .line 215
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 217
    const v2, 0x7f1309a6    # @string/quick_settings_disclosure_vpns 'This device is connected to the internet through VPNs'

    .line 219
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 225
    goto/16 :goto_8

    .line 226
    :cond_8
    if-eqz v12, :cond_9

    .line 228
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 230
    const v2, 0x7f130997    # @string/quick_settings_disclosure_managed_profile_named_vpn 'Your work apps are connected to the internet through %1$s'

    .line 232
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 235
    move-result-object v3

    .line 238
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 242
    goto/16 :goto_8

    .line 243
    :cond_9
    if-eqz v11, :cond_b

    .line 245
    if-eqz v3, :cond_a

    .line 247
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 249
    const v2, 0x7f1309a5    # @string/quick_settings_disclosure_personal_profile_named_vpn 'Your personal apps are connected to the internet through %1$s'

    .line 251
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 254
    move-result-object v3

    .line 257
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 261
    goto/16 :goto_8

    .line 262
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 264
    const v2, 0x7f1309a3    # @string/quick_settings_disclosure_named_vpn 'This device is connected to the internet through %1$s'

    .line 266
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 269
    move-result-object v3

    .line 272
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    move-result-object v1

    .line 276
    goto/16 :goto_8

    .line 277
    :cond_b
    if-eqz v14, :cond_d

    .line 279
    if-nez v9, :cond_c

    .line 281
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 288
    goto/16 :goto_8

    .line 289
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 291
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 293
    move-result-object v2

    .line 296
    invoke-virtual {v1, v15, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    move-result-object v1

    .line 300
    goto/16 :goto_8

    .line 301
    :cond_d
    const/4 v1, 0x0

    .line 303
    goto/16 :goto_8

    .line 304
    :cond_e
    if-nez v6, :cond_18

    .line 306
    if-nez v7, :cond_18

    .line 308
    if-eqz v8, :cond_f

    .line 310
    goto/16 :goto_7

    .line 312
    :cond_f
    if-eqz v11, :cond_11

    .line 314
    if-eqz v12, :cond_11

    .line 316
    if-nez v13, :cond_10

    .line 318
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 320
    const v2, 0x7f13099c    # @string/quick_settings_disclosure_management_vpns 'This device belongs to your organization and is connected to the internet through VPNs'

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 328
    goto/16 :goto_8

    .line 329
    :cond_10
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 331
    const v2, 0x7f1309a2    # @string/quick_settings_disclosure_named_management_vpns 'This device belongs to %1$s and is connected to the internet through VPNs'

    .line 333
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 336
    move-result-object v3

    .line 339
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    move-result-object v1

    .line 343
    goto :goto_8

    .line 344
    :cond_11
    if-nez v11, :cond_14

    .line 345
    if-eqz v12, :cond_12

    .line 347
    goto :goto_4

    .line 349
    :cond_12
    if-nez v13, :cond_13

    .line 350
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 354
    move-result-object v1

    .line 357
    goto :goto_8

    .line 358
    :cond_13
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 359
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 361
    move-result-object v2

    .line 364
    invoke-virtual {v1, v15, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 365
    move-result-object v1

    .line 368
    goto :goto_8

    .line 369
    :cond_14
    :goto_4
    if-nez v13, :cond_16

    .line 370
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 372
    new-array v2, v4, [Ljava/lang/Object;

    .line 374
    if-eqz v11, :cond_15

    .line 376
    move-object v3, v11

    .line 378
    goto :goto_5

    .line 379
    :cond_15
    move-object v3, v12

    .line 380
    :goto_5
    aput-object v3, v2, v5

    .line 381
    const v3, 0x7f13099b    # @string/quick_settings_disclosure_management_named_vpn 'This device belongs to your organization and is connected to the internet through %1$s'

    .line 383
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    move-result-object v1

    .line 389
    goto :goto_8

    .line 390
    :cond_16
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 391
    const/4 v2, 0x2

    .line 393
    new-array v2, v2, [Ljava/lang/Object;

    .line 394
    aput-object v13, v2, v5

    .line 396
    if-eqz v11, :cond_17

    .line 398
    move-object v3, v11

    .line 400
    goto :goto_6

    .line 401
    :cond_17
    move-object v3, v12

    .line 402
    :goto_6
    aput-object v3, v2, v4

    .line 403
    const v3, 0x7f1309a1    # @string/quick_settings_disclosure_named_management_named_vpn 'This device belongs to %1$s and is connected to the internet through %2$s'

    .line 405
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 411
    goto :goto_8

    .line 412
    :cond_18
    :goto_7
    if-nez v13, :cond_19

    .line 413
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 415
    const v2, 0x7f13099a    # @string/quick_settings_disclosure_management_monitoring 'Your organization owns this device and may monitor network traffic'

    .line 417
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 423
    goto :goto_8

    .line 424
    :cond_19
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 425
    const v2, 0x7f1309a0    # @string/quick_settings_disclosure_named_management_monitoring '%1$s owns this device and may monitor network traffic'

    .line 427
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 430
    move-result-object v3

    .line 433
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    move-result-object v1

    .line 437
    :goto_8
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 438
    if-nez v11, :cond_1b

    .line 440
    if-eqz v12, :cond_1a

    .line 442
    goto :goto_9

    .line 444
    :cond_1a
    const v1, 0x7f081026    # @drawable/ic_info_outline 'res/drawable/ic_info_outline.xml'

    .line 445
    goto :goto_a

    .line 448
    :cond_1b
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 449
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 451
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    .line 453
    move-result v1

    .line 456
    if-eqz v1, :cond_1c

    .line 457
    const v1, 0x7f081806    # @drawable/stat_sys_branded_vpn 'res/drawable/stat_sys_branded_vpn.xml'

    .line 459
    goto :goto_a

    .line 462
    :cond_1c
    const v1, 0x7f081911    # @drawable/stat_sys_vpn_ic 'res/drawable/stat_sys_vpn_ic.xml'

    .line 463
    :goto_a
    iget v2, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterIconId:I

    .line 466
    if-eq v2, v1, :cond_1d

    .line 468
    iput v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterIconId:I

    .line 470
    :cond_1d
    if-eqz v10, :cond_1f

    .line 472
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 474
    if-nez v1, :cond_20

    .line 476
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 478
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 480
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    .line 482
    move-result-object v1

    .line 485
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 486
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 488
    if-nez v1, :cond_1e

    .line 490
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    const/4 v9, 0x0

    .line 495
    goto :goto_b

    .line 496
    :cond_1e
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 497
    invoke-virtual {v1, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 499
    move-result-object v9

    .line 502
    :goto_b
    iput-object v9, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 503
    goto :goto_c

    .line 505
    :cond_1f
    const/4 v1, 0x0

    .line 506
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 507
    :cond_20
    :goto_c
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 509
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mUpdateIcon:Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

    .line 511
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 516
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

    .line 518
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void
    .line 523
.end method

.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSPanel;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/MiuiQSSecurityFooter;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mCallback:Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 13
    new-instance v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/MiuiQSSecurityFooter;I)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mUpdateIcon:Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

    .line 21
    new-instance v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

    .line 23
    const/4 v2, 0x1

    .line 25
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/MiuiQSSecurityFooter;I)V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/MiuiQSSecurityFooter$1;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 31
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    move-result-object v0

    .line 36
    const v2, 0x7f0d0315    # @layout/quick_settings_security_footer 'res/layout/quick_settings_security_footer.xml'

    .line 37
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mRootView:Landroid/view/View;

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0a0381    # @id/footer_text

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a072a    # @id/primary_footer_icon

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/ImageView;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 69
    const p1, 0x7f081026    # @drawable/ic_info_outline 'res/drawable/ic_info_outline.xml'

    .line 71
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterIconId:I

    .line 74
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mContext:Landroid/content/Context;

    .line 76
    new-instance p1, Landroid/os/Handler;

    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 80
    move-result-object v0

    .line 83
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 87
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 89
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 94
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 97
    const-class p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 99
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 104
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 107
    new-instance p1, Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

    .line 109
    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 111
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Landroid/os/Looper;

    .line 117
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/MiuiQSSecurityFooter;Landroid/os/Looper;)V

    .line 119
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHandler:Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

    .line 122
    const-string/jumbo p1, "user"

    .line 124
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object p1

    .line 130
    check-cast p1, Landroid/os/UserManager;

    .line 131
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mUm:Landroid/os/UserManager;

    .line 133
    return-void
    .line 135
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, -0x2

    if-eq p2, p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHandler:Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
