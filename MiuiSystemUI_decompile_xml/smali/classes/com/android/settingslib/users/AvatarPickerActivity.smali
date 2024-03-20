.class public Lcom/android/settingslib/users/AvatarPickerActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

.field public mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

.field public mDoneButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 3
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 5
    const/4 v1, -0x1

    .line 7
    if-eq p2, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    goto/16 :goto_1

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/users/AvatarPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 15
    if-eqz p3, :cond_1

    .line 17
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    move-result-object p3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object p3, p2

    .line 30
    :goto_0
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    const-string v3, "content"

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 40
    const-string v3, "AvatarPhotoController"

    .line 41
    if-nez v2, :cond_2

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string p1, "Invalid pictureUri scheme: "

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 73
    const-string p2, "172939189"

    .line 74
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    const p1, 0x534e4554

    .line 80
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 83
    goto :goto_1

    .line 86
    :cond_2
    const-string v2, "Error performing copy-and-crop"

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 89
    goto :goto_1

    .line 92
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    new-instance p1, Landroid/content/Intent;

    .line 100
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 102
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 111
    goto :goto_1

    .line 114
    :pswitch_1
    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 118
    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0, p3}, Lcom/android/settingslib/users/AvatarPhotoController;->cropPhoto(Landroid/net/Uri;)V

    .line 121
    goto :goto_1

    .line 124
    :cond_3
    :try_start_0
    new-instance p1, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;

    .line 125
    invoke-direct {p1, p0, p3, v0}, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/AvatarPhotoController;Landroid/net/Uri;Z)V

    .line 127
    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 130
    move-result-object p0

    .line 133
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_1

    .line 137
    :catch_0
    move-exception p0

    .line 138
    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    goto :goto_1

    .line 142
    :pswitch_2
    :try_start_1
    new-instance p1, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;

    .line 143
    const/4 p2, 0x1

    .line 145
    invoke-direct {p1, p0, p3, p2}, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/AvatarPhotoController;Landroid/net/Uri;Z)V

    .line 146
    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 149
    move-result-object p0

    .line 152
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_1

    .line 156
    :catch_1
    move-exception p0

    .line 157
    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_1
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 162
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 5
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    sget-object v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 11
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 17
    const v4, 0x7f140358    # @style/SudThemeGlif.DayNight

    .line 19
    invoke-direct {v1, v4, v3, v2}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(ILjava/lang/String;Z)V

    .line 22
    sput-object v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 25
    :cond_0
    sget-object v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 27
    iget v4, v1, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    .line 29
    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 31
    const-string v5, "PartnerConfigHelper"

    .line 33
    const-string/jumbo v6, "suwDefaultThemeString"

    .line 35
    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    move-result-object v4

    .line 49
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 50
    move-result-object v7

    .line 53
    invoke-virtual {v4, v7, v6, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 54
    move-result-object v4

    .line 57
    sput-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_2
    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 60
    if-eqz v4, :cond_4

    .line 62
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    .line 64
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 71
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    const-string v4, "SetupWizard default theme status unknown; return as null."

    .line 78
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    .line 83
    :cond_4
    :goto_0
    move-object v4, v3

    .line 85
    :goto_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 86
    move-result v6

    .line 89
    if-eqz v6, :cond_5

    .line 90
    const v6, 0x7f140361    # @style/SudThemeGlifV4.DayNight

    .line 92
    goto :goto_2

    .line 95
    :cond_5
    const v6, 0x7f140362    # @style/SudThemeGlifV4.Light

    .line 96
    :goto_2
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 99
    move-result v7

    .line 102
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 103
    move-result v8

    .line 106
    xor-int/2addr v8, v2

    .line 107
    if-eqz v7, :cond_6

    .line 108
    if-nez v8, :cond_6

    .line 110
    invoke-static {v4}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDayNightThemeRes(Ljava/lang/String;)I

    .line 112
    move-result v4

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-static {v4}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    .line 117
    move-result v4

    .line 120
    :goto_3
    if-nez v4, :cond_7

    .line 121
    if-nez v4, :cond_7

    .line 123
    goto :goto_4

    .line 125
    :cond_7
    move v6, v4

    .line 126
    :goto_4
    xor-int/2addr v0, v2

    .line 127
    const-string v4, ""

    .line 128
    if-nez v0, :cond_8

    .line 130
    invoke-static {v4}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDayNightThemeRes(Ljava/lang/String;)I

    .line 132
    move-result v0

    .line 135
    goto :goto_5

    .line 136
    :cond_8
    invoke-static {v4}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    .line 137
    move-result v0

    .line 140
    :goto_5
    if-nez v0, :cond_9

    .line 141
    if-nez v0, :cond_9

    .line 143
    goto :goto_6

    .line 145
    :cond_9
    iget-object v1, v1, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    .line 146
    if-eqz v1, :cond_a

    .line 148
    invoke-static {v4}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeVersion(Ljava/lang/String;)I

    .line 150
    move-result v4

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v4

    .line 157
    invoke-static {v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeVersion(Ljava/lang/String;)I

    .line 158
    move-result v1

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v1

    .line 165
    invoke-virtual {v4, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 166
    move-result v1

    .line 169
    if-gez v1, :cond_a

    .line 170
    goto :goto_6

    .line 172
    :cond_a
    move v6, v0

    .line 173
    :goto_6
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTheme(I)V

    .line 174
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 177
    const/4 v1, 0x0

    .line 179
    const-string v4, "isDynamicColorEnabled"

    .line 180
    if-nez v0, :cond_b

    .line 182
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    move-result-object v0

    .line 187
    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri()Landroid/net/Uri;

    .line 188
    move-result-object v6

    .line 191
    invoke-virtual {v0, v6, v4, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 192
    move-result-object v0

    .line 195
    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    goto :goto_7

    .line 198
    :catch_1
    const-string v0, "SetupWizard dynamic color supporting status unknown; return as false."

    .line 199
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 204
    goto :goto_8

    .line 206
    :cond_b
    :goto_7
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    .line 207
    if-eqz v0, :cond_c

    .line 209
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 211
    move-result v0

    .line 214
    if-eqz v0, :cond_c

    .line 215
    move v0, v2

    .line 217
    goto :goto_9

    .line 218
    :cond_c
    :goto_8
    move v0, v1

    .line 219
    :goto_9
    sget-object v3, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 220
    if-nez v0, :cond_d

    .line 222
    const-string v0, "SetupWizard does not support the dynamic color or supporting status unknown."

    .line 224
    invoke-virtual {v3, v0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 226
    goto/16 :goto_e

    .line 229
    :cond_d
    :try_start_2
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 231
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 234
    :try_start_3
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 235
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 238
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 239
    move-result-object v4

    .line 242
    invoke-static {v4}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    .line 243
    move-result v4

    .line 246
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    .line 247
    move-result v5

    .line 250
    if-eqz v4, :cond_f

    .line 251
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    .line 253
    move-result v4

    .line 256
    if-nez v4, :cond_f

    .line 257
    if-eqz v5, :cond_e

    .line 259
    const v4, 0x7f14030a    # @style/SudDynamicColorTheme.DayNight

    .line 261
    goto :goto_c

    .line 264
    :cond_e
    const v4, 0x7f14030b    # @style/SudDynamicColorTheme.Light

    .line 265
    goto :goto_c

    .line 268
    :cond_f
    if-eqz v5, :cond_10

    .line 269
    const v4, 0x7f140318    # @style/SudFullDynamicColorTheme.DayNight

    .line 271
    goto :goto_a

    .line 274
    :cond_10
    const v4, 0x7f140319    # @style/SudFullDynamicColorTheme.Light

    .line 275
    :goto_a
    if-eqz v5, :cond_11

    .line 278
    const-string v5, "SudFullDynamicColorTheme_DayNight"

    .line 280
    goto :goto_b

    .line 282
    :cond_11
    const-string v5, "SudFullDynamicColorTheme_Light"

    .line 283
    :goto_b
    const-string v6, "Return "

    .line 285
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v5

    .line 290
    invoke-virtual {v3, v5}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    .line 291
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 294
    const-string v6, "Gets the dynamic accentColor: [Light] "

    .line 296
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    const v6, 0x7f0608a8    # @color/sud_dynamic_color_accent_glif_v3_light '@color/sud_system_accent1_600'

    .line 301
    invoke-static {v6, p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(ILandroid/content/Context;)Ljava/lang/String;

    .line 304
    move-result-object v6

    .line 307
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v6, ", "

    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const v7, 0x106003f    # @android:color/system_accent1_600

    .line 316
    invoke-static {v7, p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(ILandroid/content/Context;)Ljava/lang/String;

    .line 319
    move-result-object v7

    .line 322
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v7, ", [Dark] "

    .line 326
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const v7, 0x7f0608a7    # @color/sud_dynamic_color_accent_glif_v3_dark '@color/sud_system_accent1_300'

    .line 331
    invoke-static {v7, p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(ILandroid/content/Context;)Ljava/lang/String;

    .line 334
    move-result-object v7

    .line 337
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const v6, 0x106003a    # @android:color/system_accent1_100

    .line 344
    invoke-static {v6, p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(ILandroid/content/Context;)Ljava/lang/String;

    .line 347
    move-result-object v6

    .line 350
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object v5

    .line 357
    const-string v6, "SetupLibrary"

    .line 358
    const/4 v7, 0x3

    .line 360
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 361
    move-result v7

    .line 364
    if-eqz v7, :cond_12

    .line 365
    iget-object v7, v3, Lcom/google/android/setupcompat/util/Logger;->prefix:Ljava/lang/String;

    .line 367
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    move-result-object v5

    .line 372
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    goto :goto_d

    .line 376
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    goto :goto_d

    .line 380
    :catch_2
    move-exception v4

    .line 381
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 382
    move-result-object v4

    .line 385
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 389
    move v4, v1

    .line 392
    :goto_d
    if-eqz v4, :cond_13

    .line 393
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setTheme(I)V

    .line 395
    goto :goto_e

    .line 398
    :cond_13
    const-string v0, "Error occurred on getting dynamic color theme."

    .line 399
    invoke-virtual {v3, v0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 401
    goto :goto_e

    .line 404
    :catch_3
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 406
    move-result-object v0

    .line 409
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v3, v0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 413
    :goto_e
    const v0, 0x7f0d004a    # @layout/avatar_picker 'res/layout/avatar_picker.xml'

    .line 416
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 419
    const v0, 0x7f0a03a7    # @id/glif_layout

    .line 422
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 425
    move-result-object v0

    .line 428
    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 429
    const-class v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 431
    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 433
    move-result-object v0

    .line 436
    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 437
    const/high16 v3, 0x1040000    # @android:string/cancel

    .line 439
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 441
    move-result-object v3

    .line 444
    new-instance v4, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;

    .line 445
    invoke-direct {v4, p0, v1}, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;I)V

    .line 447
    new-instance v5, Lcom/google/android/setupcompat/template/FooterButton;

    .line 450
    invoke-direct {v5, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 452
    const v3, 0x7f1303a3    # @string/done 'Done'

    .line 455
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 458
    move-result-object v3

    .line 461
    new-instance v4, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;

    .line 462
    invoke-direct {v4, p0, v2}, Lcom/android/settingslib/users/AvatarPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;I)V

    .line 464
    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton;

    .line 467
    invoke-direct {v6, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 469
    iput-object v6, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mDoneButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 472
    invoke-virtual {v6, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 474
    invoke-virtual {v0, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 477
    iget-object v3, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mDoneButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 480
    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 482
    const v0, 0x7f0a00f7    # @id/avatar_grid

    .line 485
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 488
    move-result-object v0

    .line 491
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 492
    new-instance v3, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 494
    invoke-direct {v3, p0}, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    .line 496
    iput-object v3, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 499
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 501
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 504
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 506
    move-result-object v4

    .line 509
    const v5, 0x7f0b000b    # @integer/avatar_picker_columns '3'

    .line 510
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 513
    move-result v4

    .line 516
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 517
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 520
    if-eqz p1, :cond_15

    .line 523
    const-string v0, "awaiting_result"

    .line 525
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 527
    move-result v0

    .line 530
    iput-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 531
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 533
    const-string/jumbo v3, "selected_position"

    .line 535
    const/4 v4, -0x1

    .line 538
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 539
    move-result p1

    .line 542
    iput p1, v0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 543
    iget-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mDoneButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 545
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 547
    iget v0, v0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 549
    if-eq v0, v4, :cond_14

    .line 551
    goto :goto_f

    .line 553
    :cond_14
    move v2, v1

    .line 554
    :goto_f
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 555
    :cond_15
    new-instance p1, Lcom/android/settingslib/users/AvatarPhotoController;

    .line 558
    new-instance v0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    .line 560
    invoke-direct {v0, p0}, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;-><init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V

    .line 562
    new-instance v1, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;

    .line 565
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 567
    move-result-object v2

    .line 570
    const-string v3, "file_authority"

    .line 571
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    move-result-object v2

    .line 576
    if-eqz v2, :cond_16

    .line 577
    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    iget-boolean v2, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 582
    invoke-direct {p1, v0, v1, v2}, Lcom/android/settingslib/users/AvatarPhotoController;-><init>(Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;Z)V

    .line 584
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 587
    return-void

    .line 589
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 590
    const-string p1, "File authority must be provided"

    .line 592
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 594
    throw p0
    .line 597
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 5
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mLastSelectedPosition:I

    .line 8
    return-void
    .line 10
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "awaiting_result"

    .line 2
    iget-boolean v1, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;

    .line 9
    iget v0, v0, Lcom/android/settingslib/users/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    .line 11
    const-string/jumbo v1, "selected_position"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 19
    return-void
    .line 22
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/settingslib/users/AvatarPickerActivity;->mWaitingForActivityResult:Z

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    return-void
    .line 8
.end method
