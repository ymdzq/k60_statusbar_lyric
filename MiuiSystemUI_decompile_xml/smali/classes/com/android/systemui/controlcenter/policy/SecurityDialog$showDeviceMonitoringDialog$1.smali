.class public final Lcom/android/systemui/controlcenter/policy/SecurityDialog$showDeviceMonitoringDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog$showDeviceMonitoringDialog$1;->this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog$showDeviceMonitoringDialog$1;->this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 4
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 6
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 8
    const v3, 0x7f140006    # @style/AlertDialog.Theme.DayNight

    .line 10
    invoke-direct {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 13
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 16
    const v3, 0x7f1308a7    # @string/ok '@android:string/ok'

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 25
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 28
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 30
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 32
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 39
    const v4, 0x7f1307c3    # @string/monitoring_button_view_controls 'View controls'

    .line 41
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v2, v3

    .line 49
    :goto_0
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 53
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 57
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 59
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 61
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 63
    move-result v2

    .line 66
    const/4 v4, 0x0

    .line 67
    if-eqz v2, :cond_4

    .line 68
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 70
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 72
    move-result-object v2

    .line 75
    const v5, 0x7f0d0314    # @layout/quick_settings_footer_dialog_parental_controls 'res/layout/quick_settings_footer_dialog_parental_controls.xml'

    .line 76
    invoke-virtual {v2, v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    move-result-object v2

    .line 82
    iget-object v5, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 83
    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 85
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    .line 87
    move-result-object v5

    .line 90
    iget-object v6, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 91
    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 93
    if-nez v5, :cond_1

    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    move-object v6, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object v6

    .line 107
    :goto_1
    if-eqz v6, :cond_2

    .line 108
    const v7, 0x7f0a06ee    # @id/parental_controls_icon

    .line 110
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v7

    .line 116
    check-cast v7, Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_2
    const v6, 0x7f0a06ef    # @id/parental_controls_title

    .line 122
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v6

    .line 128
    check-cast v6, Landroid/widget/TextView;

    .line 129
    iget-object v7, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 131
    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 133
    if-nez v5, :cond_3

    .line 135
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    move-object v5, v3

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 142
    invoke-virtual {v5, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 144
    move-result-object v5

    .line 147
    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    goto/16 :goto_12

    .line 151
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 153
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 155
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 157
    move-result v2

    .line 160
    iget-object v5, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 161
    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 163
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile()Z

    .line 165
    move-result v5

    .line 168
    iget-object v6, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 169
    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 171
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 173
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 175
    move-result-object v6

    .line 178
    iget-object v7, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 179
    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 181
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    .line 183
    move-result v7

    .line 186
    iget-object v8, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 187
    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 189
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    .line 191
    move-result v8

    .line 194
    iget-object v9, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 195
    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 197
    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 199
    invoke-virtual {v9, v3}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    .line 201
    move-result v9

    .line 204
    iget-object v10, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 205
    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 207
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    .line 209
    move-result-object v10

    .line 212
    iget-object v11, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 213
    check-cast v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 215
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    .line 217
    move-result-object v11

    .line 220
    iget-object v12, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 221
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 223
    move-result-object v12

    .line 226
    const v13, 0x7f0d0313    # @layout/quick_settings_footer_dialog 'res/layout/quick_settings_footer_dialog.xml'

    .line 227
    invoke-virtual {v12, v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 230
    move-result-object v12

    .line 233
    const v13, 0x7f0a02c2    # @id/device_management_subtitle

    .line 234
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    move-result-object v13

    .line 240
    check-cast v13, Landroid/widget/TextView;

    .line 241
    invoke-virtual {v0, v6}, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 243
    move-result-object v14

    .line 246
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    if-nez v2, :cond_5

    .line 250
    move-object v6, v3

    .line 252
    goto :goto_3

    .line 253
    :cond_5
    if-eqz v6, :cond_7

    .line 254
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->isFinancedDevice()Z

    .line 256
    move-result v13

    .line 259
    if-eqz v13, :cond_6

    .line 260
    iget-object v13, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 262
    const v14, 0x7f1307d4    # @string/monitoring_financed_description_named_management '%1$s may be able to access data associated with this device, manage apps, and change this device’s s ...'

    .line 264
    filled-new-array {v6, v6}, [Ljava/lang/Object;

    .line 267
    move-result-object v6

    .line 270
    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    move-result-object v6

    .line 274
    goto :goto_3

    .line 275
    :cond_6
    iget-object v13, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 276
    const v14, 0x7f1307cd    # @string/monitoring_description_named_management 'This device belongs to %1$s.\n\nYour IT admin can monitor and manage settings, corporate access, apps, ...'

    .line 278
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 281
    move-result-object v6

    .line 284
    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 288
    goto :goto_3

    .line 289
    :cond_7
    iget-object v6, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 290
    const v13, 0x7f1307ca    # @string/monitoring_description_management 'This device belongs to your organization.\n\nYour IT admin can monitor and manage settings, corporate  ...'

    .line 292
    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 298
    :goto_3
    const v13, 0x7f0a02c1    # @id/device_management_disclosures

    .line 299
    const/16 v14, 0x8

    .line 302
    if-nez v6, :cond_8

    .line 304
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    move-result-object v13

    .line 309
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 310
    goto :goto_4

    .line 313
    :cond_8
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    move-result-object v13

    .line 317
    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v13, 0x7f0a02c3    # @id/device_management_warning

    .line 321
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    move-result-object v13

    .line 327
    check-cast v13, Landroid/widget/TextView;

    .line 328
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v13, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 333
    if-nez v13, :cond_9

    .line 335
    move-object v13, v3

    .line 337
    :cond_9
    iget-object v15, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 338
    const v3, 0x7f1307c4    # @string/monitoring_button_view_policies 'View Policies'

    .line 340
    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    move-result-object v3

    .line 346
    iget-object v13, v13, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 347
    const/4 v15, -0x2

    .line 349
    invoke-virtual {v13, v15, v3, v0}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 350
    :goto_4
    if-nez v7, :cond_a

    .line 353
    if-nez v8, :cond_a

    .line 355
    const/4 v3, 0x0

    .line 357
    goto :goto_5

    .line 358
    :cond_a
    if-eqz v2, :cond_b

    .line 359
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 361
    const v7, 0x7f1307cb    # @string/monitoring_description_management_ca_certificate 'Your organization installed a certificate authority on this device. Your secure network traffic may  ...'

    .line 363
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 366
    move-result-object v3

    .line 369
    goto :goto_5

    .line 370
    :cond_b
    if-eqz v8, :cond_c

    .line 371
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 373
    const v7, 0x7f1307c7    # @string/monitoring_description_managed_profile_ca_certificate 'Your organization installed a certificate authority in your work profile. Your secure network traffi ...'

    .line 375
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 378
    move-result-object v3

    .line 381
    goto :goto_5

    .line 382
    :cond_c
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 383
    const v7, 0x7f1307c5    # @string/monitoring_description_ca_certificate 'A certificate authority is installed on this device. Your secure network traffic may be monitored or ...'

    .line 385
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 388
    move-result-object v3

    .line 391
    :goto_5
    const v7, 0x7f0a01b4    # @id/ca_certs_disclosures

    .line 392
    if-nez v3, :cond_d

    .line 395
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 397
    move-result-object v7

    .line 400
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 401
    goto :goto_6

    .line 404
    :cond_d
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 405
    move-result-object v7

    .line 408
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const v7, 0x7f0a01b6    # @id/ca_certs_warning

    .line 412
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    move-result-object v7

    .line 418
    check-cast v7, Landroid/widget/TextView;

    .line 419
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    new-instance v8, Landroid/text/method/LinkMovementMethod;

    .line 424
    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 426
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 429
    :goto_6
    if-nez v9, :cond_e

    .line 432
    const/4 v7, 0x0

    .line 434
    goto :goto_7

    .line 435
    :cond_e
    if-eqz v2, :cond_f

    .line 436
    iget-object v7, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 438
    const v8, 0x7f1307cc    # @string/monitoring_description_management_network_logging 'Your admin has turned on network logging, which monitors traffic on your device.'

    .line 440
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    move-result-object v7

    .line 446
    goto :goto_7

    .line 447
    :cond_f
    iget-object v7, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 448
    const v8, 0x7f1307c9    # @string/monitoring_description_managed_profile_network_logging 'Your admin has turned on network logging, which monitors traffic in your work profile but not in you ...'

    .line 450
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 453
    move-result-object v7

    .line 456
    :goto_7
    const v8, 0x7f0a0688    # @id/network_logging_disclosures

    .line 457
    if-nez v7, :cond_10

    .line 460
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    move-result-object v8

    .line 465
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 466
    goto :goto_8

    .line 469
    :cond_10
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 470
    move-result-object v8

    .line 473
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    const v8, 0x7f0a068a    # @id/network_logging_warning

    .line 477
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 480
    move-result-object v8

    .line 483
    check-cast v8, Landroid/widget/TextView;

    .line 484
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :goto_8
    const/4 v8, 0x1

    .line 489
    if-nez v10, :cond_11

    .line 490
    if-nez v11, :cond_11

    .line 492
    const/4 v9, 0x0

    .line 494
    goto/16 :goto_a

    .line 495
    :cond_11
    new-instance v9, Landroid/text/SpannableStringBuilder;

    .line 497
    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 499
    const v13, 0x7f1307d1    # @string/monitoring_description_two_named_vpns 'This device is connected to the internet through %1$s and %2$s. Your network activity, including ema ...'

    .line 502
    const v15, 0x7f1307ce    # @string/monitoring_description_named_vpn 'This device is connected to the internet through %1$s. Your network activity, including emails and b ...'

    .line 505
    if-eqz v2, :cond_14

    .line 508
    if-eqz v10, :cond_12

    .line 510
    if-eqz v11, :cond_12

    .line 512
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 514
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 516
    move-result-object v5

    .line 519
    invoke-virtual {v2, v13, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    move-result-object v2

    .line 523
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 524
    goto :goto_9

    .line 527
    :cond_12
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 528
    new-array v5, v8, [Ljava/lang/Object;

    .line 530
    if-nez v10, :cond_13

    .line 532
    move-object v10, v11

    .line 534
    :cond_13
    aput-object v10, v5, v4

    .line 535
    invoke-virtual {v2, v15, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 537
    move-result-object v2

    .line 540
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 541
    goto :goto_9

    .line 544
    :cond_14
    if-eqz v10, :cond_15

    .line 545
    if-eqz v11, :cond_15

    .line 547
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 549
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 551
    move-result-object v5

    .line 554
    invoke-virtual {v2, v13, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 555
    move-result-object v2

    .line 558
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 559
    goto :goto_9

    .line 562
    :cond_15
    if-eqz v11, :cond_16

    .line 563
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 565
    const v5, 0x7f1307c8    # @string/monitoring_description_managed_profile_named_vpn 'Your work apps are connected to the internet through %1$s. Your network activity in work apps, inclu ...'

    .line 567
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 570
    move-result-object v10

    .line 573
    invoke-virtual {v2, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 574
    move-result-object v2

    .line 577
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 578
    goto :goto_9

    .line 581
    :cond_16
    if-eqz v5, :cond_17

    .line 582
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 584
    const v5, 0x7f1307d0    # @string/monitoring_description_personal_profile_named_vpn 'Your personal apps are connected to the internet through %1$s. Your network activity, including emai ...'

    .line 586
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 589
    move-result-object v10

    .line 592
    invoke-virtual {v2, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 593
    move-result-object v2

    .line 596
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 597
    goto :goto_9

    .line 600
    :cond_17
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 601
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 603
    move-result-object v5

    .line 606
    invoke-virtual {v2, v15, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 607
    move-result-object v2

    .line 610
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 611
    :goto_9
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 614
    const v5, 0x7f1307d3    # @string/monitoring_description_vpn_settings_separator ' '

    .line 616
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 619
    move-result-object v2

    .line 622
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 623
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 626
    const v5, 0x7f1307d2    # @string/monitoring_description_vpn_settings 'Open VPN settings'

    .line 628
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 631
    move-result-object v2

    .line 634
    new-instance v5, Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;

    .line 635
    invoke-direct {v5, v0}, Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;-><init>(Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V

    .line 637
    invoke-virtual {v9, v2, v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 640
    :goto_a
    const v2, 0x7f0a0a91    # @id/vpn_disclosures

    .line 643
    if-nez v9, :cond_18

    .line 646
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 648
    move-result-object v2

    .line 651
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 652
    goto :goto_b

    .line 655
    :cond_18
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 656
    move-result-object v2

    .line 659
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 660
    const v2, 0x7f0a0a93    # @id/vpn_warning

    .line 663
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 666
    move-result-object v2

    .line 669
    check-cast v2, Landroid/widget/TextView;

    .line 670
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    new-instance v5, Landroid/text/method/LinkMovementMethod;

    .line 675
    invoke-direct {v5}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 677
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 680
    :goto_b
    if-eqz v6, :cond_19

    .line 683
    move v2, v8

    .line 685
    goto :goto_c

    .line 686
    :cond_19
    move v2, v4

    .line 687
    :goto_c
    if-eqz v3, :cond_1a

    .line 688
    move v3, v8

    .line 690
    goto :goto_d

    .line 691
    :cond_1a
    move v3, v4

    .line 692
    :goto_d
    if-eqz v7, :cond_1b

    .line 693
    move v5, v8

    .line 695
    goto :goto_e

    .line 696
    :cond_1b
    move v5, v4

    .line 697
    :goto_e
    if-eqz v9, :cond_1c

    .line 698
    move v6, v8

    .line 700
    goto :goto_f

    .line 701
    :cond_1c
    move v6, v4

    .line 702
    :goto_f
    if-eqz v2, :cond_1d

    .line 703
    goto :goto_11

    .line 705
    :cond_1d
    if-eqz v5, :cond_1e

    .line 706
    add-int/lit8 v2, v3, 0x1

    .line 708
    goto :goto_10

    .line 710
    :cond_1e
    move v2, v3

    .line 711
    :goto_10
    if-eqz v6, :cond_1f

    .line 712
    add-int/lit8 v2, v2, 0x1

    .line 714
    :cond_1f
    if-eq v2, v8, :cond_20

    .line 716
    goto :goto_11

    .line 718
    :cond_20
    if-eqz v3, :cond_21

    .line 719
    const v2, 0x7f0a01b5    # @id/ca_certs_subtitle

    .line 721
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 724
    move-result-object v2

    .line 727
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_21
    if-eqz v5, :cond_22

    .line 731
    const v2, 0x7f0a0689    # @id/network_logging_subtitle

    .line 733
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 736
    move-result-object v2

    .line 739
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_22
    if-eqz v6, :cond_23

    .line 743
    const v2, 0x7f0a0a92    # @id/vpn_subtitle

    .line 745
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 748
    move-result-object v2

    .line 751
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_23
    :goto_11
    move-object v2, v12

    .line 755
    :goto_12
    iget-object v1, v1, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 756
    iput-object v2, v1, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 758
    iput v4, v1, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 760
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 762
    if-nez v1, :cond_24

    .line 764
    const/4 v1, 0x0

    .line 766
    :cond_24
    invoke-static {v1}, Lcom/miui/systemui/statusbar/phone/MiuiSystemUIDialog;->applyFlags(Lmiuix/appcompat/app/AlertDialog;)V

    .line 767
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 770
    if-nez v0, :cond_25

    .line 772
    const/4 v3, 0x0

    .line 774
    goto :goto_13

    .line 775
    :cond_25
    move-object v3, v0

    .line 776
    :goto_13
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 777
    return-void
    .line 780
.end method
