.class public Lcom/android/settings/display/LitePageLayoutFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LitePageLayoutFragment.java"

# interfaces
.implements Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;
.implements Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;,
        Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;
    }
.end annotation


# static fields
.field private static final MIUI_VERSION_CODE:I

.field private static final PAGE_LAYOUT_SIZE:Landroid/util/SparseArray;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFontSize:I

.field private mCurrentUsingFontId:Ljava/lang/String;

.field private mFontCategory:Landroidx/preference/PreferenceCategory;

.field private mFontSizePreference:Lcom/android/settings/display/LiteFontSizePreference;

.field private mFontWeightPreference:Lcom/android/settings/display/LiteFontWeightPreference;

.field private mLastFontWeight:I

.field private mLastUsingFontId:Ljava/lang/String;

.field private mMoreFonts:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mTempPrefFontId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$K0teQB56TRAwgKRX2CH5WPdqdrs(Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$applyFont$5(Ljava/lang/Exception;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TuWHQttPimPts8gUD_S3q0Y4xPs(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$showThemeCtaComfirmDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwLgSgViqcw0UPLXHw6hHQQJHfg(Lcom/android/settings/display/LitePageLayoutFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$showThemeCtaComfirmDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$au2470Fbs7fW3bqbsVG13ehT6BQ(Lcom/android/settings/display/LitePageLayoutFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$applyFont$6(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFrluvfZIGZPWY_NI1arFyjrfcU(Lcom/android/settings/display/LitePageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$onResume$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lvpivs4VEBsjfTWnF3toWPgNXFs(Lcom/android/settings/display/LitePageLayoutFragment;[ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$applyFont$4([ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rzGCbU3K0cRQzfbov3fQc9ntB1A(Lcom/android/settings/display/LitePageLayoutFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/LitePageLayoutFragment;->lambda$onResume$0(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/LitePageLayoutFragment;->MIUI_VERSION_CODE:I

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/display/LitePageLayoutFragment;->PAGE_LAYOUT_SIZE:Landroid/util/SparseArray;

    .line 70
    sget v1, Lcom/android/settings/R$dimen;->page_layout_extral_small_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget v1, Lcom/android/settings/R$dimen;->page_layout_small_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget v1, Lcom/android/settings/R$dimen;->page_layout_normal_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget v1, Lcom/android/settings/R$dimen;->page_layout_medium_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget v1, Lcom/android/settings/R$dimen;->page_layout_large_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget v1, Lcom/android/settings/R$dimen;->page_layout_huge_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget v1, Lcom/android/settings/R$dimen;->page_layout_godzilla_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    return-void
.end method

.method private static Json2LocalFont(Lorg/json/JSONObject;)Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;
    .locals 11

    const-string v0, "fontWeight"

    .line 352
    new-instance v1, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 353
    const-class v2, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 354
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    .line 356
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    .line 357
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 359
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 360
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v9, v3

    .line 362
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 363
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 364
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 367
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 368
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 371
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private adjustCurrentLevelIfNeed()Z
    .locals 1

    .line 178
    sget-object v0, Lcom/android/settings/display/LitePageLayoutFragment;->PAGE_LAYOUT_SIZE:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private createFontPreference(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    return-void

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;

    .line 196
    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    const-string v0, "LitePageLayoutFragment"

    const-string v1, "createFontPreference: mContext is null"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_2
    new-instance v2, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetid(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetrightFileUnaccessable(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z

    move-result v4

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetisVariable(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 203
    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetid(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "10"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/display/LitePageLayoutFragment;->getFontTitle()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgettitle(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;

    move-result-object v1

    .line 203
    :goto_1
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetisUsing(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetid(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 205
    :goto_2
    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 207
    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetisUsing(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 208
    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetid(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mLastUsingFontId:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontWeightPreference:Lcom/android/settings/display/LiteFontWeightPreference;

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetisVariable(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->-$$Nest$fgetid(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 209
    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/settings/display/LiteFontWeightPreference;->setEnabled(Z)V

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 214
    :cond_8
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mMoreFonts:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_9

    .line 215
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_9
    return-void
.end method

.method private static getFontList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.android.thememanager.theme_provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getFonts"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "result"

    .line 324
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFonts json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LitePageLayoutFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return-object v0

    .line 327
    :cond_1
    invoke-static {p0}, Lcom/android/settings/display/LitePageLayoutFragment;->getFontsResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getFontTitle()I
    .locals 2

    .line 220
    sget v0, Lcom/android/settings/display/LitePageLayoutFragment;->MIUI_VERSION_CODE:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/settings/R$string;->MiSans_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->xiaomi_lanting_title:I

    :goto_0
    return v0
.end method

.method private static getFontsResult(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 336
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge p0, v2, :cond_1

    .line 338
    :try_start_1
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 339
    invoke-static {v2}, Lcom/android/settings/display/LitePageLayoutFragment;->Json2LocalFont(Lorg/json/JSONObject;)Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;

    move-result-object v2

    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 342
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$applyFont$4([ZLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mLastUsingFontId:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_0
    sget p0, Lcom/android/settings/R$string;->toast_apply_font_fail:I

    const/4 p1, 0x1

    invoke-static {p2, p0, p1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$applyFont$5(Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 1

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    sget p0, Lcom/android/settings/R$string;->toast_apply_font_fail:I

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic lambda$applyFont$6(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 384
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fontId"

    .line 385
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "content://com.android.thememanager.theme_provider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "applyFont"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "applyResult"

    .line 388
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    aput-boolean p1, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    aput-boolean v1, v0, v1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    :goto_0
    new-instance p1, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/display/LitePageLayoutFragment;[ZLandroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 401
    new-instance p1, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Exception;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onResume$0(Ljava/util/List;)V
    .locals 2

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/LitePageLayoutFragment;->createFontPreference(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onResume$1()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/LitePageLayoutFragment;->getFontList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/display/LitePageLayoutFragment;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showThemeCtaComfirmDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 274
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "miui.thememanager.SHOW_CTA"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.thememanager"

    .line 275
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xc8

    .line 276
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "jump to theme error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LitePageLayoutFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showThemeCtaComfirmDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 282
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private notifyFontWeightChanged()V
    .locals 3

    .line 416
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result p0

    const-string v1, "key_var_font_scale"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/32 v1, 0x20000000

    .line 418
    invoke-static {v1, v2, v0}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V

    return-void
.end method

.method private static setUiMode(Landroid/app/Activity;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/display/LargeFontUtils;->sendUiModeChangeMessage(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method

.method private showThemeCtaComfirmDialog(Landroid/content/Context;)V
    .locals 3

    .line 269
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 270
    sget p1, Lcom/android/settings/R$string;->font_cta_alert_title:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->font_cta_alert_message:I

    .line 271
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->font_cta_alert_btn_positive:I

    new-instance v2, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/display/LitePageLayoutFragment;)V

    .line 272
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->font_cta_alert_btn_negative:I

    new-instance v1, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 281
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyFont(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 381
    new-instance v0, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/LitePageLayoutFragment;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x7d3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 186
    sget p0, Lcom/android/settings/R$xml;->lite_font_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onActivityResult: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , result: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LitePageLayoutFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "onActivityResult: login success"

    .line 300
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mTempPrefFontId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "onActivityResult: login error"

    .line 304
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mContext:Landroid/content/Context;

    const-string p1, "font"

    .line 129
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "more_font_settings"

    .line 130
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mMoreFonts:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string p1, "font_size"

    .line 132
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/LiteFontSizePreference;

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontSizePreference:Lcom/android/settings/display/LiteFontSizePreference;

    const-string p1, "font_weight"

    .line 133
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/LiteFontWeightPreference;

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontWeightPreference:Lcom/android/settings/display/LiteFontWeightPreference;

    .line 134
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "font_settings"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontWeightPreference:Lcom/android/settings/display/LiteFontWeightPreference;

    .line 136
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontSizePreference:Lcom/android/settings/display/LiteFontSizePreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/LiteFontSizePreference;->setSizeChangeListener(Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontSizePreference:Lcom/android/settings/display/LiteFontSizePreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/LiteFontSizePreference;->setRecommendListener(Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;)V

    .line 141
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getCurrentUIModeType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate: mCurrentFontSize -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LitePageLayoutFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/settings/display/LitePageLayoutFragment;->adjustCurrentLevelIfNeed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iput v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    .line 146
    :cond_1
    iget p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->delayToBuildRecommendLayout:Z

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mLastFontWeight:I

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 225
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;

    if-eqz v0, :cond_5

    .line 226
    check-cast p1, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;

    .line 227
    invoke-static {p1}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->-$$Nest$fgetmRightFileUnaccessable(Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p1}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->-$$Nest$fgetmFontId(Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mTempPrefFontId:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/LitePageLayoutFragment;->showThemeCtaComfirmDialog(Landroid/content/Context;)V

    return v1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->getFontId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 236
    iget-object v4, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 237
    instance-of v5, v4, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;

    if-eqz v5, :cond_1

    .line 238
    check-cast v4, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;

    .line 239
    invoke-virtual {p1}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->getFontId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->getFontId()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontWeightPreference:Lcom/android/settings/display/LiteFontWeightPreference;

    invoke-virtual {p1}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->isVariable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/android/settings/display/LitePageLayoutFragment$LiteFontRadioButtonPreference;->getFontId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v2, v1

    .line 242
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/display/LiteFontWeightPreference;->setEnabled(Z)V

    return v1

    .line 246
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "more_font_settings"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 249
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    const-string v2, "com.android.thememanager"

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "com.android.thememanager.ThemeResourceTabActivity"

    .line 253
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TAB_ID"

    const-string v2, "fonts"

    .line 255
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    :goto_1
    const-string v0, "com.setting.pad.font"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/MiuiUtils;->canFindActivityStatic(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return v1

    .line 262
    :cond_9
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mContext:Landroid/content/Context;

    .line 156
    :cond_0
    new-instance v0, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/LitePageLayoutFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onSizeChange(I)V
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xb

    .line 440
    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xf

    .line 437
    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    goto :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 434
    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    goto :goto_0

    .line 431
    :cond_3
    iput v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    goto :goto_0

    :cond_4
    const/16 p1, 0xc

    .line 428
    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    goto :goto_0

    :cond_5
    const/16 p1, 0xa

    .line 425
    iput p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mLastUsingFontId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentUsingFontId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/LitePageLayoutFragment;->applyFont(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    invoke-static {v0, v1}, Lcom/android/settings/display/LitePageLayoutFragment;->setUiMode(Landroid/app/Activity;I)V

    .line 171
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mLastFontWeight:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/settings/display/LitePageLayoutFragment;->notifyFontWeightChanged()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    iget p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    const/16 p2, 0xd

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 98
    iput v0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    .line 102
    :cond_0
    iget p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mCurrentFontSize:I

    if-eq p1, v0, :cond_4

    const/16 p2, 0xb

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    if-eq p1, p2, :cond_5

    const/16 p2, 0xe

    if-eq p1, p2, :cond_2

    const/16 p2, 0xf

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 121
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontSizePreference:Lcom/android/settings/display/LiteFontSizePreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/display/LiteFontSizePreference;->setCurrentPointIndex(I)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment;->mFontSizePreference:Lcom/android/settings/display/LiteFontSizePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/LiteFontSizePreference;->setLastCurrentPointIndex(I)V

    return-void
.end method

.method public scrollViewToHideRecommend()V
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasRecommendLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->tryRemoveRecommendLayout()V

    :cond_0
    return-void
.end method

.method public showRecommendLayout()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasRecommendLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 454
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->tryBuildRecommendLayout(IZ)V

    .line 455
    sget v0, Lcom/android/settings/R$string;->font_settings_recommend_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setRecommendTips(I)V

    :cond_0
    return-void
.end method
