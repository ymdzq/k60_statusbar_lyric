.class public Landroidx/slice/compat/SlicePermissionActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/app/AppCompatCallback;


# instance fields
.field public mCallingPkg:Ljava/lang/String;

.field public mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 5
    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 7
    new-instance v1, Landroidx/appcompat/app/AppCompatActivity$1;

    .line 9
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatActivity$1;-><init>(Landroidx/slice/compat/SlicePermissionActivity;)V

    .line 11
    const-string v2, "androidx:appcompat"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 16
    new-instance v0, Landroidx/appcompat/app/AppCompatActivity$2;

    .line 19
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatActivity$2;-><init>(Landroidx/slice/compat/SlicePermissionActivity;)V

    .line 21
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 24
    return-void
    .line 27
.end method

.method private initViewTreeOwners()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f0a0a67    # @id/view_tree_lifecycle_owner

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    const v1, 0x7f0a0a6a    # @id/view_tree_view_model_store_owner

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    const v1, 0x7f0a0a68    # @id/view_tree_on_back_pressed_dispatcher_owner

    .line 49
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    return-void
    .line 55
.end method

.method public static loadSafeLabel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    if-ge v2, v0, :cond_3

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 26
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    .line 30
    move-result v4

    .line 33
    const/16 v5, 0xd

    .line 34
    if-eq v4, v5, :cond_2

    .line 36
    const/16 v5, 0xf

    .line 38
    if-eq v4, v5, :cond_2

    .line 40
    const/16 v5, 0xe

    .line 42
    if-ne v4, v5, :cond_0

    .line 44
    goto :goto_1

    .line 46
    :cond_0
    const/16 v5, 0xc

    .line 47
    if-ne v4, v5, :cond_1

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v5, " "

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 68
    move-result v5

    .line 71
    add-int/2addr v5, v2

    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 84
    move-result v3

    .line 87
    add-int/2addr v2, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 98
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 104
    return-object p0

    .line 106
    :cond_4
    new-instance p0, Landroid/text/TextPaint;

    .line 107
    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    .line 109
    const/high16 v0, 0x42280000    # 42.0f

    .line 112
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 117
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 119
    invoke-static {p1, p0, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 121
    move-result-object p0

    .line 124
    return-object p0
    .line 125
.end method


# virtual methods
.method public final bridge synthetic addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->addContentView$androidx$appcompat$app$AppCompatActivity(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    return-void
    .line 5
.end method

.method public final addContentView$androidx$appcompat$app$AppCompatActivity(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/slice/compat/SlicePermissionActivity;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    return-void
    .line 12
.end method

.method public final bridge synthetic attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->attachBaseContext$androidx$appcompat$app$AppCompatActivity(Landroid/content/Context;)V

    .line 2
    return-void
    .line 5
.end method

.method public final attachBaseContext$androidx$appcompat$app$AppCompatActivity(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mBaseContextAttached:Z

    .line 9
    iget v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 11
    const/16 v3, -0x64

    .line 13
    if-eq v2, v3, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 18
    :goto_0
    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->mapNightMode(ILandroid/content/Context;)I

    .line 20
    move-result v0

    .line 23
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->isAutoStorageOptedIn(Landroid/content/Context;)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->isAutoStorageOptedIn(Landroid/content/Context;)Z

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    .line 37
    if-nez v2, :cond_2

    .line 39
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v2, p1}, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    .line 46
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 48
    :cond_2
    :goto_1
    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanApplyOverrideConfiguration:Z

    .line 51
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v2, :cond_3

    .line 55
    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    .line 57
    if-eqz v2, :cond_3

    .line 59
    invoke-static {p1, v0, v4, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideAppConfiguration(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 61
    move-result-object v2

    .line 64
    :try_start_0
    move-object v5, p1

    .line 65
    check-cast v5, Landroid/view/ContextThemeWrapper;

    .line 66
    invoke-virtual {v5, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto/16 :goto_4

    .line 71
    :catch_0
    :cond_3
    instance-of v2, p1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 73
    if-eqz v2, :cond_4

    .line 75
    invoke-static {p1, v0, v4, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideAppConfiguration(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 77
    move-result-object v2

    .line 80
    :try_start_1
    move-object v5, p1

    .line 81
    check-cast v5, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 82
    invoke-virtual {v5, v2}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    goto/16 :goto_4

    .line 87
    :catch_1
    :cond_4
    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanReturnDifferentContext:Z

    .line 89
    if-nez v2, :cond_5

    .line 91
    goto/16 :goto_4

    .line 93
    :cond_5
    new-instance v2, Landroid/content/res/Configuration;

    .line 95
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 97
    const/4 v5, -0x1

    .line 100
    iput v5, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 101
    const/4 v5, 0x0

    .line 103
    iput v5, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 104
    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 106
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 114
    move-result-object v2

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v6

    .line 121
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 122
    move-result-object v6

    .line 125
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 126
    iput v7, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 128
    invoke-virtual {v2, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 130
    move-result v7

    .line 133
    if-nez v7, :cond_1c

    .line 134
    new-instance v4, Landroid/content/res/Configuration;

    .line 136
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 138
    iput v5, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 141
    invoke-virtual {v2, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 143
    move-result v5

    .line 146
    if-nez v5, :cond_6

    .line 147
    goto/16 :goto_2

    .line 149
    :cond_6
    iget v5, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 151
    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 153
    cmpl-float v5, v5, v7

    .line 155
    if-eqz v5, :cond_7

    .line 157
    iput v7, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 159
    :cond_7
    iget v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 161
    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    .line 163
    if-eq v5, v7, :cond_8

    .line 165
    iput v7, v4, Landroid/content/res/Configuration;->mcc:I

    .line 167
    :cond_8
    iget v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 169
    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    .line 171
    if-eq v5, v7, :cond_9

    .line 173
    iput v7, v4, Landroid/content/res/Configuration;->mnc:I

    .line 175
    :cond_9
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 177
    move-result-object v5

    .line 180
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 181
    move-result-object v7

    .line 184
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v5

    .line 188
    if-nez v5, :cond_a

    .line 189
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 191
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 194
    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 196
    :cond_a
    iget v5, v2, Landroid/content/res/Configuration;->touchscreen:I

    .line 198
    iget v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 200
    if-eq v5, v7, :cond_b

    .line 202
    iput v7, v4, Landroid/content/res/Configuration;->touchscreen:I

    .line 204
    :cond_b
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    .line 206
    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 208
    if-eq v5, v7, :cond_c

    .line 210
    iput v7, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 212
    :cond_c
    iget v5, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 214
    iget v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 216
    if-eq v5, v7, :cond_d

    .line 218
    iput v7, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 220
    :cond_d
    iget v5, v2, Landroid/content/res/Configuration;->navigation:I

    .line 222
    iget v7, v6, Landroid/content/res/Configuration;->navigation:I

    .line 224
    if-eq v5, v7, :cond_e

    .line 226
    iput v7, v4, Landroid/content/res/Configuration;->navigation:I

    .line 228
    :cond_e
    iget v5, v2, Landroid/content/res/Configuration;->navigationHidden:I

    .line 230
    iget v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 232
    if-eq v5, v7, :cond_f

    .line 234
    iput v7, v4, Landroid/content/res/Configuration;->navigationHidden:I

    .line 236
    :cond_f
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    .line 238
    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    .line 240
    if-eq v5, v7, :cond_10

    .line 242
    iput v7, v4, Landroid/content/res/Configuration;->orientation:I

    .line 244
    :cond_10
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 246
    and-int/lit8 v5, v5, 0xf

    .line 248
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 250
    and-int/lit8 v7, v7, 0xf

    .line 252
    if-eq v5, v7, :cond_11

    .line 254
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 256
    or-int/2addr v5, v7

    .line 258
    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 259
    :cond_11
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 261
    and-int/lit16 v5, v5, 0xc0

    .line 263
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 265
    and-int/lit16 v7, v7, 0xc0

    .line 267
    if-eq v5, v7, :cond_12

    .line 269
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 271
    or-int/2addr v5, v7

    .line 273
    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 274
    :cond_12
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 276
    and-int/lit8 v5, v5, 0x30

    .line 278
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 280
    and-int/lit8 v7, v7, 0x30

    .line 282
    if-eq v5, v7, :cond_13

    .line 284
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 286
    or-int/2addr v5, v7

    .line 288
    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 289
    :cond_13
    iget v5, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 291
    and-int/lit16 v5, v5, 0x300

    .line 293
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 295
    and-int/lit16 v7, v7, 0x300

    .line 297
    if-eq v5, v7, :cond_14

    .line 299
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 301
    or-int/2addr v5, v7

    .line 303
    iput v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 304
    :cond_14
    iget v5, v2, Landroid/content/res/Configuration;->colorMode:I

    .line 306
    and-int/lit8 v5, v5, 0x3

    .line 308
    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 310
    and-int/lit8 v7, v7, 0x3

    .line 312
    if-eq v5, v7, :cond_15

    .line 314
    iget v5, v4, Landroid/content/res/Configuration;->colorMode:I

    .line 316
    or-int/2addr v5, v7

    .line 318
    iput v5, v4, Landroid/content/res/Configuration;->colorMode:I

    .line 319
    :cond_15
    iget v5, v2, Landroid/content/res/Configuration;->colorMode:I

    .line 321
    and-int/lit8 v5, v5, 0xc

    .line 323
    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 325
    and-int/lit8 v7, v7, 0xc

    .line 327
    if-eq v5, v7, :cond_16

    .line 329
    iget v5, v4, Landroid/content/res/Configuration;->colorMode:I

    .line 331
    or-int/2addr v5, v7

    .line 333
    iput v5, v4, Landroid/content/res/Configuration;->colorMode:I

    .line 334
    :cond_16
    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 336
    and-int/lit8 v5, v5, 0xf

    .line 338
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 340
    and-int/lit8 v7, v7, 0xf

    .line 342
    if-eq v5, v7, :cond_17

    .line 344
    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 346
    or-int/2addr v5, v7

    .line 348
    iput v5, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 349
    :cond_17
    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 351
    and-int/lit8 v5, v5, 0x30

    .line 353
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 355
    and-int/lit8 v7, v7, 0x30

    .line 357
    if-eq v5, v7, :cond_18

    .line 359
    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 361
    or-int/2addr v5, v7

    .line 363
    iput v5, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 364
    :cond_18
    iget v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 366
    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 368
    if-eq v5, v7, :cond_19

    .line 370
    iput v7, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 372
    :cond_19
    iget v5, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 374
    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 376
    if-eq v5, v7, :cond_1a

    .line 378
    iput v7, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 380
    :cond_1a
    iget v5, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 382
    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 384
    if-eq v5, v7, :cond_1b

    .line 386
    iput v7, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 388
    :cond_1b
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 390
    iget v5, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 392
    if-eq v2, v5, :cond_1c

    .line 394
    iput v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 396
    :cond_1c
    :goto_2
    invoke-static {p1, v0, v4, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideAppConfiguration(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 398
    move-result-object v0

    .line 401
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 402
    const v4, 0x7f1404b3    # @style/Theme.AppCompat.Empty

    .line 404
    invoke-direct {v2, p1, v4}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 407
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 410
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 413
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 416
    if-eqz p1, :cond_1d

    .line 417
    goto :goto_3

    .line 419
    :cond_1d
    move v1, v3

    .line 420
    :goto_3
    move v3, v1

    .line 421
    :catch_2
    if-eqz v3, :cond_1e

    .line 422
    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 424
    move-result-object p1

    .line 427
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 428
    :cond_1e
    move-object p1, v2

    .line 431
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 432
    return-void
    .line 435
.end method

.method public final bridge synthetic closeOptionsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->closeOptionsMenu$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final closeOptionsMenu$androidx$appcompat$app$AppCompatActivity()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->dispatchKeyEvent$androidx$appcompat$app$AppCompatActivity(Landroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final dispatchKeyEvent$androidx$appcompat$app$AppCompatActivity(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 11
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->dispatchKeyEvent$androidx$core$app$ComponentActivity(Landroid/view/KeyEvent;)Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final bridge synthetic findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->findViewById$androidx$appcompat$app$AppCompatActivity(I)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final findViewById$androidx$appcompat$app$AppCompatActivity(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 8
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method

.method public final getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    .line 6
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 16
    return-object p0
    .line 18
.end method

.method public final bridge synthetic getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getMenuInflater$androidx$appcompat$app$AppCompatActivity()Landroid/view/MenuInflater;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getMenuInflater$androidx$appcompat$app$AppCompatActivity()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 8
    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 12
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    .line 15
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 26
    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 31
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 33
    return-object p0
    .line 35
.end method

.method public final bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getResources$androidx$appcompat$app$AppCompatActivity()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getResources$androidx$appcompat$app$AppCompatActivity()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/widget/VectorEnabledTintResources;->$r8$clinit:I

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final bridge synthetic invalidateOptionsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->invalidateOptionsMenu$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final invalidateOptionsMenu$androidx$appcompat$app$AppCompatActivity()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 20
    const/4 v1, 0x1

    .line 22
    or-int/2addr v0, v1

    .line 23
    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 24
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 26
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    move-result-object v0

    .line 35
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    .line 36
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 38
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 40
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 43
    :cond_0
    return-void
    .line 45
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    iget-object p2, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v1

    .line 30
    :try_start_0
    invoke-static {v1, v0}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    .line 31
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    .line 35
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v3, "slice_uri"

    .line 40
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    const-string v0, "provider_pkg"

    .line 46
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string p1, "pkg"

    .line 51
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    .line 56
    const-string p2, "grant_perms"

    .line 58
    const-string/jumbo v0, "supports_versioned_parcelable"

    .line 60
    invoke-virtual {p1, p2, v0, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    :try_start_3
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p2

    .line 75
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :goto_0
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    const-string p2, "SliceProviderCompat"

    .line 81
    const-string v0, "Unable to get slice descendants"

    .line 83
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
    .line 91
.end method

.method public final bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->onConfigurationChanged$androidx$appcompat$app$AppCompatActivity(Landroid/content/res/Configuration;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onConfigurationChanged$androidx$appcompat$app$AppCompatActivity(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 19
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 31
    const/high16 v1, 0x7f050000    # @bool/abc_action_bar_embed_tabs 'true'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 38
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 41
    move-result-object p1

    .line 44
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 45
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object v1, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 48
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v2, v1, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 51
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 57
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    monitor-exit p1

    .line 65
    new-instance p1, Landroid/content/res/Configuration;

    .line 66
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 74
    move-result-object v0

    .line 77
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 78
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEffectiveConfiguration:Landroid/content/res/Configuration;

    .line 81
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    .line 84
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_3
    monitor-exit v1

    .line 89
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    monitor-exit p1

    .line 92
    throw p0
    .line 93
.end method

.method public final bridge synthetic onContentChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->onContentChanged$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final onContentChanged$androidx$appcompat$app$AppCompatActivity()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    move-result-object p1

    .line 8
    const-string/jumbo v0, "slice_uri"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroid/net/Uri;

    .line 16
    iput-object p1, p0, Landroidx/slice/compat/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 23
    const-string v0, "pkg"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    move-result-object p1

    .line 35
    const-string v0, "provider_pkg"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    move-result-object v0

    .line 45
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    .line 46
    move-result-object v1

    .line 49
    iget-object v2, p0, Landroidx/slice/compat/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 50
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 53
    move-result-object v2

    .line 56
    invoke-static {v2, v0}, Landroidx/slice/compat/SlicePermissionActivity;->loadSafeLabel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 57
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    .line 69
    move-result-object v2

    .line 72
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 73
    move-result-object p1

    .line 76
    invoke-static {p1, v0}, Landroidx/slice/compat/SlicePermissionActivity;->loadSafeLabel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 77
    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 84
    invoke-virtual {v2, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 88
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 94
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 99
    const v3, 0x7f13002e    # @string/abc_slice_permission_title 'Allow %1$s to show %2$s slices?'

    .line 100
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 106
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 107
    const v1, 0x7f0d0021    # @layout/abc_slice_permission_request 'res/layout/abc_slice_permission_request.xml'

    .line 109
    iput v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 112
    iget-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 114
    const v3, 0x7f13002b    # @string/abc_slice_permission_deny 'Deny'

    .line 116
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 119
    move-result-object v1

    .line 122
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    iget-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 127
    const v3, 0x7f13002a    # @string/abc_slice_permission_allow 'Allow'

    .line 129
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 132
    move-result-object v1

    .line 135
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 136
    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 140
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 142
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    iput-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 149
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 151
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 155
    move-result-object v0

    .line 158
    const v1, 0x7f0a0967    # @id/text1

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 165
    check-cast v0, Landroid/widget/TextView;

    .line 166
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 171
    const v2, 0x7f13002c    # @string/abc_slice_permission_text_1 '- It can read information from %1$s'

    .line 172
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 184
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 188
    move-result-object v0

    .line 191
    const v1, 0x7f0a0968    # @id/text2

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object v0

    .line 198
    check-cast v0, Landroid/widget/TextView;

    .line 199
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 201
    move-result-object p1

    .line 204
    const v1, 0x7f13002d    # @string/abc_slice_permission_text_2 '- It can take actions inside %1$s'

    .line 205
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 215
    :catch_0
    move-exception p1

    .line 216
    const-string v0, "SlicePermissionActivity"

    .line 217
    const-string v1, "Couldn\'t find package"

    .line 219
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 224
    :goto_0
    return-void
    .line 227
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->onDestroy$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    iget-object v0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object p0, p0, Landroidx/slice/compat/SlicePermissionActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onDestroy$androidx$appcompat$app$AppCompatActivity()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 9
    return-void
    .line 12
.end method

.method public final bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->onKeyDown$androidx$appcompat$app$AppCompatActivity(ILandroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onKeyDown$androidx$appcompat$app$AppCompatActivity(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final bridge synthetic onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->onMenuItemSelected$androidx$appcompat$app$AppCompatActivity(ILandroid/view/MenuItem;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onMenuItemSelected$androidx$appcompat$app$AppCompatActivity(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 16
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 19
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 21
    move-result p2

    .line 24
    const v1, 0x102002c    # @android:id/home

    .line 25
    const/4 v2, 0x0

    .line 28
    if-ne p2, v1, :cond_8

    .line 29
    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 33
    check-cast p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 35
    iget p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 37
    and-int/lit8 p1, p1, 0x4

    .line 39
    if-eqz p1, :cond_8

    .line 41
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    .line 43
    move-result-object p1

    .line 46
    if-eqz p1, :cond_7

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    .line 49
    move-result p2

    .line 52
    if-eqz p2, :cond_6

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    .line 60
    move-result-object p2

    .line 63
    if-nez p2, :cond_1

    .line 64
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    .line 66
    move-result-object p2

    .line 69
    :cond_1
    if-eqz p2, :cond_4

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 72
    move-result-object v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 82
    move-result-object v1

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v3

    .line 89
    :try_start_0
    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    move-result-object v1

    .line 93
    :goto_0
    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 99
    move-result-object v1

    .line 102
    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_1

    .line 111
    :catch_0
    move-exception p0

    .line 112
    const-string p1, "TaskStackBuilder"

    .line 113
    const-string p2, "Bad ComponentName while traversing activity parent metadata"

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    throw p1

    .line 125
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    move-result p2

    .line 129
    if-nez p2, :cond_5

    .line 130
    new-array p2, v2, [Landroid/content/Intent;

    .line 132
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, [Landroid/content/Intent;

    .line 138
    new-instance p2, Landroid/content/Intent;

    .line 140
    aget-object v1, p1, v2

    .line 142
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 144
    const v1, 0x1000c000

    .line 147
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    move-result-object p2

    .line 153
    aput-object p2, p1, v2

    .line 154
    sget-object p2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 156
    const/4 p2, 0x0

    .line 158
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 159
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    goto :goto_2

    .line 165
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 166
    goto :goto_2

    .line 169
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 170
    const-string p1, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 172
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0

    .line 177
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 178
    goto :goto_2

    .line 181
    :cond_7
    move v0, v2

    .line 182
    :goto_2
    return v0

    .line 183
    :cond_8
    return v2
    .line 184
.end method

.method public final bridge synthetic onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->onMenuOpened$androidx$appcompat$app$AppCompatActivity(ILandroid/view/Menu;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onMenuOpened$androidx$appcompat$app$AppCompatActivity(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final bridge synthetic onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->onPanelClosed$androidx$appcompat$app$AppCompatActivity(ILandroid/view/Menu;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onPanelClosed$androidx$appcompat$app$AppCompatActivity(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    return-void
    .line 5
.end method

.method public final bridge synthetic onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->onPostCreate$androidx$appcompat$app$AppCompatActivity(Landroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onPostCreate$androidx$appcompat$app$AppCompatActivity(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 11
    return-void
    .line 14
.end method

.method public final bridge synthetic onPostResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->onPostResume$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final onPostResume$androidx$appcompat$app$AppCompatActivity()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 11
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 19
    :cond_0
    return-void
    .line 21
.end method

.method public final bridge synthetic onStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->onStart$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStart$androidx$appcompat$app$AppCompatActivity()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    .line 13
    return-void
    .line 16
.end method

.method public final bridge synthetic onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->onStop$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStop$androidx$appcompat$app$AppCompatActivity()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 11
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 19
    iget-object p0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 21
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final bridge synthetic onSupportActionModeFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final bridge synthetic onSupportActionModeStarted()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final bridge synthetic onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->onTitleChanged$androidx$appcompat$app$AppCompatActivity(Ljava/lang/CharSequence;I)V

    .line 2
    return-void
    .line 5
.end method

.method public final onTitleChanged$androidx$appcompat$app$AppCompatActivity(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    return-void
    .line 12
.end method

.method public final bridge synthetic onWindowStartingSupportActionMode()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final bridge synthetic openOptionsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->openOptionsMenu$androidx$appcompat$app$AppCompatActivity()V

    .line 2
    return-void
    .line 5
.end method

.method public final openOptionsMenu$androidx$appcompat$app$AppCompatActivity()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final bridge synthetic setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->setContentView$androidx$appcompat$app$AppCompatActivity(I)V

    return-void
.end method

.method public final bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->setContentView$androidx$appcompat$app$AppCompatActivity(Landroid/view/View;)V

    return-void
.end method

.method public final bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/slice/compat/SlicePermissionActivity;->setContentView$androidx$appcompat$app$AppCompatActivity(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setContentView$androidx$appcompat$app$AppCompatActivity(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/slice/compat/SlicePermissionActivity;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public final setContentView$androidx$appcompat$app$AppCompatActivity(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/slice/compat/SlicePermissionActivity;->initViewTreeOwners()V

    .line 4
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView$androidx$appcompat$app$AppCompatActivity(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroidx/slice/compat/SlicePermissionActivity;->initViewTreeOwners()V

    .line 6
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final bridge synthetic setTheme(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SlicePermissionActivity;->setTheme$androidx$appcompat$app$AppCompatActivity(I)V

    .line 2
    return-void
    .line 5
.end method

.method public final setTheme$androidx$appcompat$app$AppCompatActivity(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/slice/compat/SlicePermissionActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    .line 11
    return-void
    .line 13
.end method
