.class final Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.domain.interactor.FooterActionsInteractorImpl$securityButtonConfig$1$1"
    f = "FooterActionsInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $security:Lcom/android/systemui/security/data/model/SecurityModel;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/security/data/model/SecurityModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;-><init>(Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/security/data/model/SecurityModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->label:I

    .line 4
    if-nez v1, :cond_23

    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 11
    iget-object v1, v1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->qsSecurityFooterUtils:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-boolean v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    .line 20
    iget-object v3, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 22
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 24
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    .line 26
    move-result-object v3

    .line 29
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 32
    move-result v4

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    move v3, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    .line 48
    iget-boolean v7, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    .line 50
    iget-boolean v8, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    .line 52
    iget-object v9, v0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    .line 54
    if-nez v7, :cond_2

    .line 56
    if-nez v9, :cond_2

    .line 58
    if-eqz v4, :cond_1

    .line 60
    if-eqz v8, :cond_1

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    const/4 v10, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_1
    move v10, v6

    .line 67
    :goto_2
    iget-boolean v11, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    .line 68
    iget-object v12, v0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    .line 70
    iget-boolean v13, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    .line 72
    iget-boolean v14, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    .line 74
    iget-boolean v15, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    .line 76
    if-eqz v2, :cond_3

    .line 78
    if-eqz v3, :cond_5

    .line 80
    :cond_3
    if-nez v11, :cond_5

    .line 82
    if-nez v12, :cond_5

    .line 84
    if-nez v13, :cond_5

    .line 86
    if-nez v14, :cond_5

    .line 88
    if-eqz v10, :cond_4

    .line 90
    if-eqz v15, :cond_4

    .line 92
    goto :goto_3

    .line 94
    :cond_4
    const/4 v3, 0x0

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    :goto_3
    move v3, v6

    .line 97
    :goto_4
    const/4 v5, 0x0

    .line 98
    if-nez v3, :cond_6

    .line 99
    goto/16 :goto_f

    .line 101
    :cond_6
    if-eqz v13, :cond_8

    .line 103
    if-eqz v10, :cond_7

    .line 105
    if-eqz v15, :cond_7

    .line 107
    goto :goto_5

    .line 109
    :cond_7
    const/4 v3, 0x0

    .line 110
    goto :goto_6

    .line 111
    :cond_8
    :goto_5
    move v3, v6

    .line 112
    :goto_6
    if-eqz v14, :cond_9

    .line 113
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 115
    const v2, 0x7f1309a4    # @string/quick_settings_disclosure_parental_controls 'This device is managed by your parent'

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 123
    goto/16 :goto_c

    .line 124
    :cond_9
    const/4 v10, 0x2

    .line 126
    if-nez v2, :cond_15

    .line 127
    iget-object v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    .line 129
    if-nez v11, :cond_11

    .line 131
    if-eqz v7, :cond_a

    .line 133
    if-eqz v15, :cond_a

    .line 135
    goto/16 :goto_8

    .line 137
    :cond_a
    if-nez v12, :cond_d

    .line 139
    if-eqz v9, :cond_b

    .line 141
    if-eqz v15, :cond_b

    .line 143
    goto :goto_7

    .line 145
    :cond_b
    if-eqz v4, :cond_c

    .line 146
    if-eqz v8, :cond_c

    .line 148
    if-eqz v15, :cond_c

    .line 150
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 152
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 154
    move-result-object v2

    .line 157
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 158
    const-string v4, "SystemUi.QS_MSG_WORK_PROFILE_NETWORK"

    .line 160
    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 165
    goto/16 :goto_c

    .line 166
    :cond_c
    if-eqz v13, :cond_14

    .line 168
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 173
    goto/16 :goto_c

    .line 174
    :cond_d
    :goto_7
    if-eqz v12, :cond_e

    .line 176
    if-eqz v9, :cond_e

    .line 178
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 180
    const v2, 0x7f1309a6    # @string/quick_settings_disclosure_vpns 'This device is connected to the internet through VPNs'

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 188
    goto/16 :goto_c

    .line 189
    :cond_e
    if-eqz v9, :cond_f

    .line 191
    if-eqz v15, :cond_f

    .line 193
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 195
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 197
    move-result-object v2

    .line 200
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 201
    invoke-direct {v4, v1, v9, v6}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 203
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 206
    move-result-object v1

    .line 209
    const-string v6, "SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN"

    .line 210
    invoke-virtual {v2, v6, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 215
    goto/16 :goto_c

    .line 216
    :cond_f
    if-eqz v12, :cond_14

    .line 218
    if-eqz v4, :cond_10

    .line 220
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 222
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 224
    move-result-object v2

    .line 227
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 228
    invoke-direct {v4, v1, v12, v10}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 230
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 233
    move-result-object v1

    .line 236
    const-string v6, "SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN"

    .line 237
    invoke-virtual {v2, v6, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 242
    goto/16 :goto_c

    .line 243
    :cond_10
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 245
    const v2, 0x7f1309a3    # @string/quick_settings_disclosure_named_vpn 'This device is connected to the internet through %1$s'

    .line 247
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 250
    move-result-object v4

    .line 253
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 257
    goto/16 :goto_c

    .line 258
    :cond_11
    :goto_8
    if-eqz v7, :cond_13

    .line 260
    if-eqz v15, :cond_13

    .line 262
    if-nez v2, :cond_12

    .line 264
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 266
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 268
    move-result-object v2

    .line 271
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 272
    const-string v4, "SystemUi.QS_MSG_WORK_PROFILE_MONITORING"

    .line 274
    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 279
    goto/16 :goto_c

    .line 280
    :cond_12
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 282
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 284
    move-result-object v4

    .line 287
    new-instance v7, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 288
    invoke-direct {v7, v1, v2, v6}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 290
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 293
    move-result-object v1

    .line 296
    const-string v2, "SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING"

    .line 297
    invoke-virtual {v4, v2, v7, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 302
    goto/16 :goto_c

    .line 303
    :cond_13
    if-eqz v11, :cond_14

    .line 305
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 307
    const v2, 0x7f13099d    # @string/quick_settings_disclosure_monitoring 'Network may be monitored'

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 315
    goto/16 :goto_c

    .line 316
    :cond_14
    move-object v1, v5

    .line 318
    goto/16 :goto_c

    .line 319
    :cond_15
    iget-object v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    .line 321
    if-nez v11, :cond_1d

    .line 323
    if-nez v7, :cond_1d

    .line 325
    if-eqz v8, :cond_16

    .line 327
    goto/16 :goto_b

    .line 329
    :cond_16
    if-nez v12, :cond_18

    .line 331
    if-eqz v9, :cond_17

    .line 333
    goto :goto_9

    .line 335
    :cond_17
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 336
    move-result-object v1

    .line 339
    goto/16 :goto_c

    .line 340
    :cond_18
    :goto_9
    if-eqz v12, :cond_1a

    .line 342
    if-eqz v9, :cond_1a

    .line 344
    if-nez v2, :cond_19

    .line 346
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 348
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 350
    move-result-object v2

    .line 353
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 354
    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS"

    .line 356
    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 358
    move-result-object v1

    .line 361
    goto/16 :goto_c

    .line 362
    :cond_19
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 364
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 366
    move-result-object v4

    .line 369
    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 370
    const/4 v7, 0x0

    .line 372
    invoke-direct {v6, v1, v2, v7}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 373
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 376
    move-result-object v1

    .line 379
    const-string v2, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS"

    .line 380
    invoke-virtual {v4, v2, v6, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    move-result-object v1

    .line 385
    goto :goto_c

    .line 386
    :cond_1a
    if-eqz v12, :cond_1b

    .line 387
    move-object v4, v12

    .line 389
    goto :goto_a

    .line 390
    :cond_1b
    move-object v4, v9

    .line 391
    :goto_a
    if-nez v2, :cond_1c

    .line 392
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 394
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 396
    move-result-object v2

    .line 399
    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 400
    const/4 v7, 0x0

    .line 402
    invoke-direct {v6, v1, v4, v7}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 403
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 406
    move-result-object v1

    .line 409
    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN"

    .line 410
    invoke-virtual {v2, v4, v6, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 415
    goto :goto_c

    .line 416
    :cond_1c
    iget-object v6, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 417
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 419
    move-result-object v6

    .line 422
    new-instance v7, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    .line 423
    invoke-direct {v7, v1, v2, v4}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 425
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 428
    move-result-object v1

    .line 431
    const-string v2, "SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN"

    .line 432
    invoke-virtual {v6, v2, v7, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    move-result-object v1

    .line 437
    goto :goto_c

    .line 438
    :cond_1d
    :goto_b
    if-nez v2, :cond_1e

    .line 439
    iget-object v2, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 441
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 443
    move-result-object v2

    .line 446
    iget-object v1, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 447
    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_MONITORING"

    .line 449
    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 451
    move-result-object v1

    .line 454
    goto :goto_c

    .line 455
    :cond_1e
    iget-object v4, v1, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 456
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 458
    move-result-object v4

    .line 461
    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 462
    invoke-direct {v6, v1, v2, v10}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 464
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 467
    move-result-object v1

    .line 470
    const-string v2, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING"

    .line 471
    invoke-virtual {v4, v2, v6, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 473
    move-result-object v1

    .line 476
    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 477
    move-result-object v1

    .line 480
    if-eqz v14, :cond_1f

    .line 481
    iget-object v2, v0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    .line 483
    if-eqz v2, :cond_1f

    .line 485
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    .line 487
    invoke-direct {v0, v2, v5}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 489
    goto :goto_e

    .line 492
    :cond_1f
    if-nez v12, :cond_21

    .line 493
    if-eqz v9, :cond_20

    .line 495
    goto :goto_d

    .line 497
    :cond_20
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 498
    const v2, 0x7f081026    # @drawable/ic_info_outline 'res/drawable/ic_info_outline.xml'

    .line 500
    invoke-direct {v0, v2, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 503
    goto :goto_e

    .line 506
    :cond_21
    :goto_d
    iget-boolean v0, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    .line 507
    if-eqz v0, :cond_22

    .line 509
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 511
    const v2, 0x7f081806    # @drawable/stat_sys_branded_vpn 'res/drawable/stat_sys_branded_vpn.xml'

    .line 513
    invoke-direct {v0, v2, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 516
    goto :goto_e

    .line 519
    :cond_22
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 520
    const v2, 0x7f081911    # @drawable/stat_sys_vpn_ic 'res/drawable/stat_sys_vpn_ic.xml'

    .line 522
    invoke-direct {v0, v2, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 525
    :goto_e
    new-instance v5, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;

    .line 528
    invoke-direct {v5, v0, v1, v3}, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/String;Z)V

    .line 530
    :goto_f
    return-object v5

    .line 533
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 534
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 536
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 538
    throw v0
    .line 541
.end method
