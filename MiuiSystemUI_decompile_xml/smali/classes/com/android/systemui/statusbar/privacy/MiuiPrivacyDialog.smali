.class public Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final clickListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mPhoneCallString:Ljava/lang/String;

.field public final privacyElements:Ljava/util/List;

.field public final recentUsedList:Ljava/util/ArrayList;

.field public final usingList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->usingList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->recentUsedList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->clickListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;

    .line 24
    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->mPhoneCallString:Ljava/lang/String;

    .line 28
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyDialogController;->elements:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->privacyElements:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 34
    return-void
    .line 36
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;Landroid/view/ViewGroup;Z)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0d02e7    # @layout/privacy_dialog_item 'res/layout/privacy_dialog_item.xml'

    .line 6
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->phoneCall:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->mPhoneCallString:Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 23
    :goto_0
    const v3, 0x7f0a00ca    # @id/app_icon

    .line 25
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v4, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->active:Z

    .line 42
    if-nez p3, :cond_6

    .line 44
    if-eqz v3, :cond_1

    .line 46
    const p3, 0x7f1308b7    # @string/ongoing_privacy_dialog_using_op 'Being used by %1$s'

    .line 48
    goto :goto_1

    .line 51
    :cond_1
    const p3, 0x7f1308b5    # @string/ongoing_privacy_dialog_recent_op 'Recently used by %1$s'

    .line 52
    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    invoke-virtual {p0, p3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 62
    iget-object v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 63
    iget-object v4, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 65
    if-eqz v1, :cond_2

    .line 67
    if-eqz v4, :cond_2

    .line 69
    const v5, 0x7f1308b0    # @string/ongoing_privacy_dialog_attribution_proxy_label '(%1$s • %2$s)'

    .line 71
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    if-eqz v1, :cond_3

    .line 83
    const v4, 0x7f1308af    # @string/ongoing_privacy_dialog_attribution_label '(%s)'

    .line 85
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 91
    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    if-eqz v4, :cond_4

    .line 97
    const v1, 0x7f1308b1    # @string/ongoing_privacy_dialog_attribution_text '(through %s)'

    .line 99
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 105
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/4 v1, 0x0

    .line 111
    :goto_2
    if-eqz v1, :cond_5

    .line 112
    const-string v4, " "

    .line 114
    filled-new-array {p3, v4, v1}, [Ljava/lang/CharSequence;

    .line 116
    move-result-object p3

    .line 119
    invoke-static {p3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 120
    move-result-object p3

    .line 123
    :cond_5
    move-object v1, p3

    .line 124
    :cond_6
    const p3, 0x7f0a0966    # @id/text

    .line 125
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p3

    .line 131
    check-cast p3, Landroid/widget/TextView;

    .line 132
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const p3, 0x7f0a02b2    # @id/detail_description

    .line 137
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object p3

    .line 143
    check-cast p3, Landroid/widget/TextView;

    .line 144
    if-eqz v3, :cond_9

    .line 146
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->camera:Z

    .line 148
    if-eqz v1, :cond_7

    .line 150
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 152
    if-eqz v3, :cond_7

    .line 154
    const v1, 0x7f130c36    # @string/using_camera_and_microphone 'This app is accessing camera and microphone'

    .line 156
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    goto :goto_3

    .line 162
    :cond_7
    if-eqz v1, :cond_8

    .line 163
    const v1, 0x7f130c35    # @string/using_camera 'This app is accessing camera'

    .line 165
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    goto :goto_3

    .line 171
    :cond_8
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 172
    if-eqz v1, :cond_c

    .line 174
    const v1, 0x7f130c37    # @string/using_microphone 'This app is accessing microphone'

    .line 176
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    goto :goto_3

    .line 182
    :cond_9
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->camera:Z

    .line 183
    if-eqz v1, :cond_a

    .line 185
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 187
    if-eqz v3, :cond_a

    .line 189
    const v1, 0x7f130a26    # @string/recent_used_camera_and_microphone 'This app accessed camera and microphone'

    .line 191
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    goto :goto_3

    .line 197
    :cond_a
    if-eqz v1, :cond_b

    .line 198
    const v1, 0x7f130a25    # @string/recent_used_camera 'This app accessed camera'

    .line 200
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    goto :goto_3

    .line 206
    :cond_b
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 207
    if-eqz v1, :cond_c

    .line 209
    const v1, 0x7f130a27    # @string/recent_used_microphone 'This app accessed microphone'

    .line 211
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    :cond_c
    :goto_3
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->camera:Z

    .line 217
    if-eqz p3, :cond_d

    .line 219
    const p3, 0x7f0a0732    # @id/privacy_camera_img

    .line 221
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 224
    move-result-object p3

    .line 227
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_d
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 231
    if-eqz p3, :cond_e

    .line 233
    const p3, 0x7f0a073c    # @id/privacy_mic_img

    .line 235
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 238
    move-result-object p3

    .line 241
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_e
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->phoneCall:Z

    .line 248
    if-nez p1, :cond_f

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->clickListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$1;

    .line 252
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    goto :goto_4

    .line 257
    :cond_f
    const p0, 0x7f0a03b2    # @id/goto_icon

    .line 258
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 261
    move-result-object p0

    .line 264
    const/4 p1, 0x4

    .line 265
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    return-void
    .line 272
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v1, 0x7f1308b4    # @string/ongoing_privacy_dialog_phonecall 'Phone call'

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->mPhoneCallString:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->usingList:Ljava/util/ArrayList;

    .line 16
    iget-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->recentUsedList:Ljava/util/ArrayList;

    .line 18
    const-class v5, Lcom/miui/systemui/SettingsManager;

    .line 20
    iget-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->privacyElements:Ljava/util/List;

    .line 22
    if-eqz v6, :cond_c

    .line 24
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v7

    .line 29
    check-cast v7, Lcom/miui/systemui/SettingsManager;

    .line 30
    iget-boolean v7, v7, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 32
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v6

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v8

    .line 41
    if-eqz v8, :cond_c

    .line 42
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v8

    .line 47
    check-cast v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 48
    iget-boolean v9, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 50
    sget-object v10, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 52
    sget-object v11, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 54
    const/4 v12, 0x1

    .line 56
    iget-object v13, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 57
    iget-object v14, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 59
    if-eqz v9, :cond_6

    .line 61
    if-eqz v7, :cond_2

    .line 63
    const/4 v9, 0x0

    .line 65
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v15

    .line 69
    if-ge v9, v15, :cond_2

    .line 70
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v15

    .line 75
    check-cast v15, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 76
    iget-object v15, v15, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->packageName:Ljava/lang/String;

    .line 78
    invoke-static {v15, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 80
    move-result v15

    .line 83
    if-eqz v15, :cond_1

    .line 84
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v9

    .line 89
    check-cast v9, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 90
    goto :goto_2

    .line 92
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 93
    goto :goto_1

    .line 95
    :cond_2
    const/4 v9, 0x0

    .line 96
    :goto_2
    if-eqz v9, :cond_4

    .line 97
    if-ne v14, v11, :cond_3

    .line 99
    iput-boolean v12, v9, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->camera:Z

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    if-ne v14, v10, :cond_0

    .line 104
    iput-boolean v12, v9, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 106
    goto :goto_0

    .line 108
    :cond_4
    if-ne v14, v11, :cond_5

    .line 109
    new-instance v9, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 111
    iget-object v10, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 113
    iget v11, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 115
    iget-object v12, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 117
    iget-object v13, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 119
    iget-object v14, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 121
    iget-boolean v15, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 123
    iget-boolean v3, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 125
    iget-object v4, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 127
    iget-object v8, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    const/16 v25, 0x0

    .line 131
    const/16 v26, 0x1

    .line 133
    move/from16 v21, v15

    .line 135
    move-object v15, v9

    .line 137
    move-object/from16 v16, v10

    .line 138
    move/from16 v17, v11

    .line 140
    move-object/from16 v18, v12

    .line 142
    move-object/from16 v19, v13

    .line 144
    move-object/from16 v20, v14

    .line 146
    move/from16 v22, v3

    .line 148
    move-object/from16 v23, v4

    .line 150
    move-object/from16 v24, v8

    .line 152
    invoke-direct/range {v15 .. v26}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/Intent;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 154
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 160
    :cond_5
    if-ne v14, v10, :cond_0

    .line 161
    new-instance v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 163
    iget-object v4, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 165
    iget v9, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 167
    iget-object v10, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 169
    iget-object v11, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 171
    iget-object v12, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 173
    iget-boolean v13, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 175
    iget-boolean v14, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 177
    iget-object v15, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 179
    iget-object v8, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    const/16 v37, 0x1

    .line 183
    const/16 v38, 0x0

    .line 185
    move-object/from16 v27, v3

    .line 187
    move-object/from16 v28, v4

    .line 189
    move/from16 v29, v9

    .line 191
    move-object/from16 v30, v10

    .line 193
    move-object/from16 v31, v11

    .line 195
    move-object/from16 v32, v12

    .line 197
    move/from16 v33, v13

    .line 199
    move/from16 v34, v14

    .line 201
    move-object/from16 v35, v15

    .line 203
    move-object/from16 v36, v8

    .line 205
    invoke-direct/range {v27 .. v38}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/Intent;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 207
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    goto/16 :goto_0

    .line 213
    :cond_6
    if-eqz v7, :cond_8

    .line 215
    const/4 v3, 0x0

    .line 217
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 218
    move-result v4

    .line 221
    if-ge v3, v4, :cond_8

    .line 222
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v4

    .line 227
    check-cast v4, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 228
    iget-object v4, v4, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->packageName:Ljava/lang/String;

    .line 230
    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 232
    move-result v4

    .line 235
    if-eqz v4, :cond_7

    .line 236
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v3

    .line 241
    check-cast v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 242
    goto :goto_4

    .line 244
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 245
    goto :goto_3

    .line 247
    :cond_8
    const/4 v3, 0x0

    .line 248
    :goto_4
    if-eqz v3, :cond_a

    .line 249
    if-ne v14, v11, :cond_9

    .line 251
    iput-boolean v12, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->camera:Z

    .line 253
    goto/16 :goto_0

    .line 255
    :cond_9
    if-ne v14, v10, :cond_0

    .line 257
    iput-boolean v12, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_a
    if-ne v14, v11, :cond_b

    .line 263
    new-instance v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 265
    iget-object v4, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 267
    iget v9, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 269
    iget-object v10, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 271
    iget-object v11, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 273
    iget-object v12, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 275
    iget-boolean v13, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 277
    iget-boolean v14, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 279
    iget-object v15, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 281
    iget-object v8, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 283
    const/16 v25, 0x0

    .line 285
    const/16 v26, 0x1

    .line 287
    move-object/from16 v23, v15

    .line 289
    move-object v15, v3

    .line 291
    move-object/from16 v16, v4

    .line 292
    move/from16 v17, v9

    .line 294
    move-object/from16 v18, v10

    .line 296
    move-object/from16 v19, v11

    .line 298
    move-object/from16 v20, v12

    .line 300
    move/from16 v21, v13

    .line 302
    move/from16 v22, v14

    .line 304
    move-object/from16 v24, v8

    .line 306
    invoke-direct/range {v15 .. v26}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/Intent;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 308
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    goto/16 :goto_0

    .line 314
    :cond_b
    if-ne v14, v10, :cond_0

    .line 316
    new-instance v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 318
    iget-object v4, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 320
    iget v9, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 322
    iget-object v10, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 324
    iget-object v11, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 326
    iget-object v12, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 328
    iget-boolean v13, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 330
    iget-boolean v14, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 332
    iget-object v15, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 334
    iget-object v8, v8, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 336
    const/16 v37, 0x1

    .line 338
    const/16 v38, 0x0

    .line 340
    move-object/from16 v27, v3

    .line 342
    move-object/from16 v28, v4

    .line 344
    move/from16 v29, v9

    .line 346
    move-object/from16 v30, v10

    .line 348
    move-object/from16 v31, v11

    .line 350
    move-object/from16 v32, v12

    .line 352
    move/from16 v33, v13

    .line 354
    move/from16 v34, v14

    .line 356
    move-object/from16 v35, v15

    .line 358
    move-object/from16 v36, v8

    .line 360
    invoke-direct/range {v27 .. v38}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/Intent;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 362
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    goto/16 :goto_0

    .line 368
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 370
    move-result v3

    .line 373
    if-nez v3, :cond_d

    .line 374
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 376
    move-result v3

    .line 379
    if-nez v3, :cond_d

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 382
    goto/16 :goto_7

    .line 385
    :cond_d
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 387
    const v4, 0x7f140006    # @style/AlertDialog.Theme.DayNight

    .line 389
    invoke-direct {v3, v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 392
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 395
    move-result-object v4

    .line 398
    const v6, 0x7f0d02e6    # @layout/privacy_dialog 'res/layout/privacy_dialog.xml'

    .line 399
    const/4 v7, 0x0

    .line 402
    const/4 v8, 0x0

    .line 403
    invoke-virtual {v4, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 404
    move-result-object v4

    .line 407
    const v6, 0x7f0a0a52    # @id/using_title

    .line 408
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 411
    move-result-object v6

    .line 414
    const v7, 0x7f0a0783    # @id/recent_used_title

    .line 415
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 418
    move-result-object v7

    .line 421
    const v8, 0x7f0a0782    # @id/recent_used_divider

    .line 422
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 425
    move-result-object v8

    .line 428
    const v9, 0x7f0a0a51    # @id/using_container

    .line 429
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 432
    move-result-object v9

    .line 435
    check-cast v9, Landroid/view/ViewGroup;

    .line 436
    const v10, 0x7f0a0781    # @id/recent_used_container

    .line 438
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 441
    move-result-object v10

    .line 444
    check-cast v10, Landroid/view/ViewGroup;

    .line 445
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 447
    move-result-object v5

    .line 450
    check-cast v5, Lcom/miui/systemui/SettingsManager;

    .line 451
    iget-boolean v5, v5, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 453
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 455
    move-result v11

    .line 458
    const/16 v12, 0x8

    .line 459
    if-lez v11, :cond_e

    .line 461
    const/4 v6, 0x0

    .line 463
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 464
    move-result v11

    .line 467
    if-ge v6, v11, :cond_f

    .line 468
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 470
    move-result-object v11

    .line 473
    check-cast v11, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 474
    invoke-virtual {v0, v11, v9, v5}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->createView(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;Landroid/view/ViewGroup;Z)V

    .line 476
    add-int/lit8 v6, v6, 0x1

    .line 479
    goto :goto_5

    .line 481
    :cond_e
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 482
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 485
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 488
    move-result v1

    .line 491
    if-lez v1, :cond_10

    .line 492
    const/4 v8, 0x0

    .line 494
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 495
    move-result v1

    .line 498
    if-ge v8, v1, :cond_11

    .line 499
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 501
    move-result-object v1

    .line 504
    check-cast v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;

    .line 505
    invoke-virtual {v0, v1, v10, v5}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;->createView(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;Landroid/view/ViewGroup;Z)V

    .line 507
    add-int/lit8 v8, v8, 0x1

    .line 510
    goto :goto_6

    .line 512
    :cond_10
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 513
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 516
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 519
    :cond_11
    const v1, 0x7f130919    # @string/privacy_dialog_title 'Notifications about sensitive actions'

    .line 522
    invoke-virtual {v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 525
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    .line 528
    new-instance v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$2;

    .line 531
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;)V

    .line 533
    invoke-virtual {v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 536
    new-instance v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$3;

    .line 539
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$3;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog;)V

    .line 541
    const v2, 0x7f1304b2    # @string/got_it 'Got it'

    .line 544
    invoke-virtual {v3, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 547
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 550
    move-result-object v1

    .line 553
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 554
    move-result-object v2

    .line 557
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 558
    move-result-object v2

    .line 561
    const/4 v3, 0x0

    .line 562
    invoke-virtual {v2, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    .line 566
    move-result v0

    .line 569
    if-nez v0, :cond_12

    .line 570
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 572
    :cond_12
    :goto_7
    return-void
    .line 575
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    return-void
    .line 8
.end method
