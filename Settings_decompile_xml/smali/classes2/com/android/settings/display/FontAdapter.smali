.class public Lcom/android/settings/display/FontAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/FontAdapter$FontSelectListener;,
        Lcom/android/settings/display/FontAdapter$FontViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/display/FontAdapter$FontViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_FALLBACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static EMPTY:I = 0x0

.field public static FONT:I = 0x1

.field private static TAG:Ljava/lang/String; = "FontAdapter"


# instance fields
.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private downIndex:J

.field private mCurrentIndex:J

.field public mLastIndex:J

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/android/settings/display/FontAdapter$FontSelectListener;


# direct methods
.method public static synthetic $r8$lambda$muwgBhfJW-g_prFuCoZ1SYWIDp4(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/display/FontAdapter;->lambda$setFont$0(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdownIndex(Lcom/android/settings/display/FontAdapter;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/display/FontAdapter;->downIndex:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/android/settings/display/FontAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdownIndex(Lcom/android/settings/display/FontAdapter;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/settings/display/FontAdapter;->downIndex:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 17

    const-string v0, "/system/fonts/Roboto-Regular.ttf"

    const-string v1, "/system/fonts/NotoSansCJK-Regular.ttc"

    const-string v2, "/system/fonts/NotoNaskhArabic-Regular.ttf"

    const-string v3, "/system/fonts/NotoSansDevanagari-VF.ttf"

    const-string v4, "/system/fonts/NotoSansKhmerUI-Regular.ttf"

    const-string v5, "/system/fonts/NotoSansLao-Regular.ttf"

    const-string v6, "/system/fonts/NotoSansMyanmar-Regular.otf"

    const-string v7, "/system/fonts/NotoSansThai-Regular.ttf"

    const-string v8, "/system/fonts/NotoSerifTibetan-VF.ttf"

    const-string v9, "/system/fonts/NotoSansBengali-VF.ttf"

    const-string v10, "/system/fonts/NotoSansGujarati-Regular.ttf"

    const-string v11, "/system/fonts/NotoSansGurmukhi-VF.ttf"

    const-string v12, "/system/fonts/NotoSansOriya-Regular.ttf"

    const-string v13, "/system/fonts/NotoSansTamil-VF.ttf"

    const-string v14, "/system/fonts/NotoSansTelugu-VF.ttf"

    const-string v15, "/system/fonts/NotoSansKannada-VF.ttf"

    const-string v16, "/system/fonts/NotoSansMalayalam-VF.ttf"

    .line 59
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/FontAdapter;->DEFAULT_FONT_FALLBACK_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/android/settings/display/FontAdapter;->downIndex:J

    .line 56
    iput-wide v0, p0, Lcom/android/settings/display/FontAdapter;->mCurrentIndex:J

    .line 57
    iput-wide v0, p0, Lcom/android/settings/display/FontAdapter;->mLastIndex:J

    return-void
.end method

.method private createDefaultTypeface()Landroid/graphics/Typeface;
    .locals 5

    .line 305
    sget-object v0, Lcom/android/settings/display/FontAdapter;->DEFAULT_FONT_FALLBACK_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    invoke-direct {p0, v3}, Lcom/android/settings/display/FontAdapter;->createFontFamily(Ljava/lang/String;)Landroid/graphics/fonts/FontFamily;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 310
    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-object v1

    .line 320
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private createFontFamily(Ljava/lang/String;)Landroid/graphics/fonts/FontFamily;
    .locals 1

    .line 292
    :try_start_0
    new-instance p0, Landroid/graphics/fonts/Font$Builder;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p0

    .line 293
    new-instance p1, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {p1, p0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {p1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 295
    sget-object p1, Lcom/android/settings/display/FontAdapter;->TAG:Ljava/lang/String;

    const-string v0, "createFontFamily failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private createItemTypeface(Ljava/lang/String;ILandroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V
    .locals 2

    .line 326
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'wght\' "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-virtual {v0, p1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p3, p1}, Lcom/android/settings/display/FontAdapter;->setFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    invoke-virtual {p0, p3, p4}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    :goto_0
    return-void
.end method

.method private getMiddleScaleFromWeightList(Lcom/android/settings/display/LocalFontModel;)I
    .locals 3

    .line 269
    sget-object p0, Lcom/android/settings/display/PageLayoutFragment;->MIUI_WGHT:[I

    const/4 v0, 0x5

    aget p0, p0, v0

    .line 270
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return p0

    .line 274
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 275
    rem-int/lit8 v1, p0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 276
    div-int/lit8 p0, p0, 0x2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v0

    div-int/lit8 p0, p0, 0x2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 279
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object p1

    sub-int/2addr p0, v2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 p0, v0, 0x2

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setFont$0(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private tryGetFontAssertFile(Lcom/android/settings/display/LocalFontModel;)Ljava/io/File;
    .locals 4

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/display/FontAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/FontAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getContentUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 127
    invoke-static {p0, v0}, Lcom/android/settings/usagestats/utils/FileUtils;->InputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/display/FontAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_0

    .line 345
    sget p0, Lcom/android/settings/display/FontAdapter;->EMPTY:I

    return p0

    .line 346
    :cond_0
    sget p0, Lcom/android/settings/display/FontAdapter;->FONT:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/FontAdapter;->onBindViewHolder(Lcom/android/settings/display/FontAdapter$FontViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/display/FontAdapter$FontViewHolder;I)V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 210
    iget-object v0, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkBox:Lmiuix/visual/check/VisualCheckBox;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->checkGlobalJumpThemeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object p0, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkbox3points:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkbox3points:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object p1, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkbox3points:Lmiuix/visual/check/VisualCheckBox;

    iget-wide v3, p0, Lcom/android/settings/display/FontAdapter;->mCurrentIndex:J

    int-to-long v5, p2

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/LocalFontModel;

    .line 220
    iget-object v3, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkBox:Lmiuix/visual/check/VisualCheckBox;

    iget-wide v4, p0, Lcom/android/settings/display/FontAdapter;->mCurrentIndex:J

    int-to-long v6, p2

    cmp-long p2, v4, v6

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 224
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->isMisans()Z

    move-result p2

    if-nez p2, :cond_6

    .line 225
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "10"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_4

    goto :goto_2

    .line 228
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_5

    const/16 p2, 0x1f4

    .line 230
    iget-object p1, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->textView:Landroid/widget/TextView;

    const-string v1, "/system/fonts/Roboto-Regular.ttf"

    invoke-direct {p0, v1, p2, p1, v0}, Lcom/android/settings/display/FontAdapter;->createItemTypeface(Ljava/lang/String;ILandroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    goto :goto_3

    .line 233
    :cond_5
    iget-object p1, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    goto :goto_3

    .line 226
    :cond_6
    :goto_2
    sget-object p2, Lcom/android/settings/display/PageLayoutFragment;->MIUI_WGHT:[I

    const/4 v1, 0x5

    aget p2, p2, v1

    iget-object p1, p1, Lcom/android/settings/display/FontAdapter$FontViewHolder;->textView:Landroid/widget/TextView;

    const-string v1, "/system/fonts/MiSansVF.ttf"

    invoke-direct {p0, v1, p2, p1, v0}, Lcom/android/settings/display/FontAdapter;->createItemTypeface(Ljava/lang/String;ILandroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/FontAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/FontAdapter$FontViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/FontAdapter$FontViewHolder;
    .locals 2

    .line 150
    iget-object p2, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/settings/display/FontAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/utils/SettingsFeatures;->checkGlobalJumpThemeEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->font_item_normal:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->font_item_big:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 155
    :goto_0
    new-instance p2, Lcom/android/settings/display/FontAdapter$FontViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/display/FontAdapter$FontViewHolder;-><init>(Landroid/view/View;)V

    .line 156
    new-instance p1, Lcom/android/settings/display/FontAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/settings/display/FontAdapter$1;-><init>(Lcom/android/settings/display/FontAdapter;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/display/FontAdapter$FontViewHolder;->setItemTouchListener(Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;)V

    return-object p2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/display/FontAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCurrentFontId(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/display/FontAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/FontAdapter;->setCurrentIndex(J)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/android/settings/display/FontAdapter;->mCurrentIndex:J

    iput-wide v0, p0, Lcom/android/settings/display/FontAdapter;->mLastIndex:J

    .line 186
    iput-wide p1, p0, Lcom/android/settings/display/FontAdapter;->mCurrentIndex:J

    long-to-int p1, v0

    .line 187
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 188
    iget-wide p1, p0, Lcom/android/settings/display/FontAdapter;->mCurrentIndex:J

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    const/4 p1, 0x0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/LocalFontModel;

    .line 84
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b004d74e-5c49-430c-bb6a-18ed5d2d33e4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getFontAssert()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/FontAdapter;->tryGetFontAssertFile(Lcom/android/settings/display/LocalFontModel;)Ljava/io/File;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/settings/display/LocalFontModel;->setFontAssert(Ljava/io/File;)V

    if-eqz v1, :cond_1

    .line 93
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 94
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    .line 95
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 96
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    const-string v2, "/system/fonts/NotoSansCJK-Regular.ttc"

    .line 98
    invoke-direct {p0, v2}, Lcom/android/settings/display/FontAdapter;->createFontFamily(Ljava/lang/String;)Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 99
    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v3, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 100
    invoke-virtual {v3, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2

    .line 103
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/display/LocalFontModel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/display/FontAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 107
    sget-object v2, Lcom/android/settings/display/FontAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataList file io error, font is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    .line 285
    new-instance p0, Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V
    .locals 3

    .line 241
    :try_start_0
    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 242
    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->isMisans()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    invoke-direct {p0, p2}, Lcom/android/settings/display/FontAdapter;->getMiddleScaleFromWeightList(Lcom/android/settings/display/LocalFontModel;)I

    move-result v0

    .line 254
    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "b004d74e-5c49-430c-bb6a-18ed5d2d33e4"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    .line 253
    :goto_0
    invoke-static {v0, p2}, Lcom/android/settings/display/font/FontWeightUtils;->getVarTypeface(II)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 243
    :cond_2
    :goto_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->isMisans()Z

    move-result p2

    if-nez p2, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/android/settings/display/FontAdapter;->createDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 248
    :cond_3
    sget-object p2, Lcom/android/settings/display/PageLayoutFragment;->MIUI_WGHT:[I

    const/4 v0, 0x5

    aget p2, p2, v0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/display/font/FontWeightUtils;->getVarTypeface(II)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/display/FontAdapter;->setFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 260
    :cond_5
    sget-object p0, Lcom/android/settings/display/FontAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFontFamily error fontTypeFace, content uri is null! "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 263
    sget-object p1, Lcom/android/settings/display/FontAdapter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set FontFamily fail, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public setFontSelectListener(Lcom/android/settings/display/FontAdapter$FontSelectListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/display/FontAdapter;->mListener:Lcom/android/settings/display/FontAdapter$FontSelectListener;

    return-void
.end method
