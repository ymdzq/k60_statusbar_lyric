.class public Lcom/android/settings/display/PageLayoutFragment;
.super Lcom/android/settings/BaseFragment;
.source "PageLayoutFragment.java"

# interfaces
.implements Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;
.implements Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;
.implements Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;
.implements Lcom/android/settings/display/FontAdapter$FontSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;,
        Lcom/android/settings/display/PageLayoutFragment$DownloadRunnable;
    }
.end annotation


# static fields
.field private static LOCAL_FONT_SP:Ljava/lang/String;

.field private static MAX_FONT_COUNT:I

.field private static final MIUI_VERSION_CODE:I

.field public static final MIUI_WGHT:[I

.field protected static final PAGE_LAYOUT_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_LAYOUT_TITLE:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static RECOMMEND_HIDE:I

.field private static RECOMMEND_SHOW:I

.field public static final SYSTEM_FONTS_MIUI_EX_REGULAR_TTF:Ljava/lang/String;


# instance fields
.field private fontAdapter:Lcom/android/settings/display/FontAdapter;

.field private fontWeightLinearLayout:Landroid/view/View;

.field final isPrimaryUser:Z

.field private isTalkbackMode:Z

.field private localFontModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

.field private mCacheResTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentFont:Lcom/android/settings/display/LocalFontModel;

.field private mCurrentFontId:Ljava/lang/String;

.field private mCurrentFontPos:I

.field protected mCurrentLevel:I

.field private mFontBubbleLeftTv:Landroid/widget/TextView;

.field private mFontBubbleRightTv:Landroid/widget/TextView;

.field private mFontHintTv:Landroid/widget/TextView;

.field protected mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

.field private mHander:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

.field private mLanProMiui13FontIsExists:Z

.field private mLastFontId:Ljava/lang/String;

.field private mLastFontPos:I

.field private mLastFontWeight:I

.field private mLastProgress:I

.field private mRecommendLayout:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field final myUserId:I

.field private originFontModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;


# direct methods
.method public static synthetic $r8$lambda$8uFTSG4HX5u5vVMrcve4NzTxZr4(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->lambda$tryBuildRecommendLayout$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$L2qmQbhQBHTgBqgGh8lS7Oj-0jU(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->lambda$onActivityResult$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$U-5pM6iKT7IdxoWR82yHXdEa86M(Lcom/android/settings/display/PageLayoutFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->lambda$getFonts$5(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQffjxWyH7IsKO7sQ9OD3Zxa4U8(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->lambda$applyFont$7(Ljava/lang/Exception;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9MSPzkm0wKuLjw1OAdbFqk3RYk(Lcom/android/settings/display/PageLayoutFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->lambda$showThemeCtaComfirmDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m6PlSRS7KfLbDZxy1YXJWsSB4Cc(Lcom/android/settings/display/PageLayoutFragment;[ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->lambda$applyFont$6([ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q5lC-qRHKmLs_Y9NlA2Reb4MWBY(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/PageLayoutFragment;->lambda$applyFont$8(Ljava/lang/String;IILandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYeQJnDherKWmOjbAMLU64tMNEU(Lcom/android/settings/display/PageLayoutFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->lambda$showThemeCtaComfirmDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zdmZAKf0uapaDHfdyW1XnQgpmGY(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->lambda$tryBuildRecommendLayout$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfontWeightLinearLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontWeightLinearLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalFontModelList(Lcom/android/settings/display/PageLayoutFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/PageLayoutFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/LocalFontModel;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFontId(Lcom/android/settings/display/PageLayoutFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLanProMiui13FontIsExists(Lcom/android/settings/display/PageLayoutFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLanProMiui13FontIsExists:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastFontWeight(Lcom/android/settings/display/PageLayoutFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoriginFontModelList(Lcom/android/settings/display/PageLayoutFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->originFontModelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Lcom/android/settings/display/PageLayoutFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollViewCard(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontSettingsScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfontAdapter(Lcom/android/settings/display/PageLayoutFragment;Lcom/android/settings/display/FontAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlocalFontModelList(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFont(Lcom/android/settings/display/PageLayoutFragment;Lcom/android/settings/display/LocalFontModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFontId(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLanProMiui13FontIsExists(Lcom/android/settings/display/PageLayoutFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLanProMiui13FontIsExists:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastFontId(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoriginFontModelList(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->originFontModelList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompareOldAndNewFontList(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->compareOldAndNewFontList(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAllTextByCustomSize(Lcom/android/settings/display/PageLayoutFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextByCustomSize(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLocalFontModelListCacahe(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->setLocalFontModelListCacahe(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBubbleAndHintText(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->updateBubbleAndHintText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMAX_FONT_COUNT()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/display/PageLayoutFragment;->MAX_FONT_COUNT:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetRECOMMEND_HIDE()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_HIDE:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetFontTitle()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->getFontTitle()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->PAGE_LAYOUT_TITLE:Ljava/util/LinkedHashMap;

    .line 112
    sget-boolean v1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    const/16 v2, 0xd

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xf

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xc

    .line 122
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xa

    .line 121
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v1, :cond_0

    .line 113
    sget v1, Lcom/android/settings/R$string;->layout_size_small:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget v1, Lcom/android/settings/R$string;->layout_size_normal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget v1, Lcom/android/settings/R$string;->layout_size_medium:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget v1, Lcom/android/settings/R$string;->layout_size_large:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget v1, Lcom/android/settings/R$string;->layout_size_huge:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget v1, Lcom/android/settings/R$string;->layout_size_exhuge:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    sget v1, Lcom/android/settings/R$string;->layout_size_extral_small:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget v1, Lcom/android/settings/R$string;->layout_size_small:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget v1, Lcom/android/settings/R$string;->layout_size_normal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget v1, Lcom/android/settings/R$string;->layout_size_large:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget v1, Lcom/android/settings/R$string;->layout_size_huge:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget v1, Lcom/android/settings/R$string;->layout_size_exhuge:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 155
    sput v0, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_SHOW:I

    const/4 v1, 0x4

    .line 156
    sput v1, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_HIDE:I

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settings/display/PageLayoutFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    const-string/jumbo v10, "ro.miui.ui.font.mi_font_path"

    const-string v11, "/system/fonts/MiLanProVF.ttf"

    .line 170
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/display/PageLayoutFragment;->SYSTEM_FONTS_MIUI_EX_REGULAR_TTF:Ljava/lang/String;

    new-array v8, v8, [I

    .line 181
    fill-array-data v8, :array_0

    sput-object v8, Lcom/android/settings/display/PageLayoutFragment;->MIUI_WGHT:[I

    .line 188
    sget v8, Lcom/android/settings/R$dimen;->page_layout_extral_small_size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget v8, Lcom/android/settings/R$dimen;->page_layout_small_size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget v7, Lcom/android/settings/R$dimen;->page_layout_normal_size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget v6, Lcom/android/settings/R$dimen;->page_layout_medium_size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget v2, Lcom/android/settings/R$dimen;->page_layout_large_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget v2, Lcom/android/settings/R$dimen;->page_layout_huge_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget v2, Lcom/android/settings/R$dimen;->page_layout_godzilla_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 207
    sput v1, Lcom/android/settings/display/PageLayoutFragment;->MAX_FONT_COUNT:I

    const-string/jumbo v1, "ro.miui.ui.version.code"

    .line 209
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/PageLayoutFragment;->MIUI_VERSION_CODE:I

    const-string v0, "LOCAL_FONT_SP"

    .line 211
    sput-object v0, Lcom/android/settings/display/PageLayoutFragment;->LOCAL_FONT_SP:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCacheResTitle:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->isTalkbackMode:Z

    const/4 v1, -0x1

    .line 175
    iput v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastProgress:I

    .line 178
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mTypefaceCache:Landroid/util/SparseArray;

    .line 213
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/PageLayoutFragment;->myUserId:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 214
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mLanProMiui13FontIsExists:Z

    .line 953
    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mHander:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

    return-void
.end method

.method private addChildViewForRecommendLayout(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;)V"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->line_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 697
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 698
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 699
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/recommend/bean/RecommendItem;

    .line 700
    invoke-virtual {v3}, Lcom/android/settings/recommend/bean/RecommendItem;->getTargetPageTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 701
    invoke-virtual {v3}, Lcom/android/settings/recommend/bean/RecommendItem;->getTargetPageTitle()Ljava/lang/String;

    move-result-object v4

    .line 702
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mCacheResTitle:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "tryBuildRecommendLayout: Uri parse fail or recommendLayout addVew fail"

    const-string v7, "PageLayoutFragment"

    if-nez v5, :cond_0

    .line 703
    iget-object v4, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/recommend/bean/RecommendItem;->getTargetPageTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "string"

    invoke-virtual {v4, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 704
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    :try_start_0
    invoke-virtual {v3}, Lcom/android/settings/recommend/bean/RecommendItem;->getIntent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/display/PageLayoutFragment;->addRecommendView(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mCacheResTitle:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/settings/recommend/bean/RecommendItem;->getTargetPageTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 709
    :catch_0
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 713
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mCacheResTitle:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/android/settings/recommend/bean/RecommendItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/display/PageLayoutFragment;->addRecommendView(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 715
    :catch_1
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private adjustCurrentLevelIfNeed()Z
    .locals 3

    .line 308
    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    if-ne v2, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private compareOldAndNewFont(Lcom/android/settings/display/LocalFontModel;Lcom/android/settings/display/LocalFontModel;)Z
    .locals 3

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    .line 1132
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1135
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1136
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->isUsing()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->isUsing()Z

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1138
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1140
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    return p0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return p0
.end method

.method private compareOldAndNewFontList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    .line 1123
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/LocalFontModel;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/display/LocalFontModel;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/display/PageLayoutFragment;->compareOldAndNewFont(Lcom/android/settings/display/LocalFontModel;Lcom/android/settings/display/LocalFontModel;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private completeHintText(Landroid/widget/TextView;II)V
    .locals 3

    if-eqz p1, :cond_4

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    sget-object v1, Lcom/android/settings/display/PageLayoutFragment;->PAGE_LAYOUT_TITLE:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 484
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x32

    if-eq p3, p2, :cond_3

    if-ge p3, p2, :cond_2

    .line 487
    sget p2, Lcom/android/settings/R$string;->weight_light:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/android/settings/R$string;->weight_heavy:I

    :goto_0
    const-string p3, " "

    .line 488
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private deleteRecommendFile()V
    .locals 1

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "recommend.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 688
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 690
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getCurrentFontId()Ljava/lang/String;
    .locals 2

    .line 1279
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->LOCAL_FONT_SP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "current_font_id"

    const-string v1, "10"

    .line 1280
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFontList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;"
        }
    .end annotation

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1150
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

    .line 1152
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFonts json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PageLayoutFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return-object v0

    .line 1155
    :cond_1
    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->getFontsResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getFontTitle()I
    .locals 2

    .line 451
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 452
    sget v0, Lcom/android/settings/R$string;->default_font_title_global:I

    return v0

    .line 454
    :cond_0
    sget v0, Lcom/android/settings/display/PageLayoutFragment;->MIUI_VERSION_CODE:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    sget v0, Lcom/android/settings/R$string;->MiSans_title:I

    goto :goto_0

    :cond_1
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
            "Lcom/android/settings/display/LocalFontModel;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1185
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge p0, v2, :cond_1

    .line 1187
    :try_start_1
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1188
    invoke-static {v2}, Lcom/android/settings/display/font/FontModel2JsonUtils;->Json2LocalFont(Lorg/json/JSONObject;)Lcom/android/settings/display/LocalFontModel;

    move-result-object v2

    .line 1189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1191
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1195
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private getLocalFontModelListCacahe()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;"
        }
    .end annotation

    .line 1261
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->LOCAL_FONT_SP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "local_font_list"

    const/4 v1, 0x0

    .line 1262
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->getFontsResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$applyFont$6([ZLandroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1227
    aget-boolean v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1228
    iget-object p2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontId:Ljava/lang/String;

    .line 1229
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->originFontModelList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/display/PageLayoutFragment;->setLocalFontModelListCacahe(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->modifyFontSizeAndWeight()V

    .line 1232
    sget v0, Lcom/android/settings/R$string;->toast_apply_font_fail:I

    invoke-static {p2, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 1234
    :goto_0
    aget-boolean p2, p1, v1

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    aget-boolean p1, p1, p2

    if-nez p1, :cond_2

    .line 1235
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->modifyFontSizeAndWeight()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$applyFont$7(Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 2

    const-string v0, "PageLayoutFragment"

    const-string v1, "applyFont: "

    .line 1240
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1242
    sget p1, Lcom/android/settings/R$string;->toast_apply_font_fail:I

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->modifyFontSizeAndWeight()V

    return-void
.end method

.method private synthetic lambda$applyFont$8(Ljava/lang/String;IILandroid/content/Context;)V
    .locals 6

    const-string v0, "PageLayoutFragment"

    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Z

    .line 1207
    fill-array-data v2, :array_0

    .line 1208
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fontId"

    .line 1209
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fontScale"

    .line 1210
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "fontWeight"

    .line 1211
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    .line 1213
    :try_start_1
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.android.thememanager.theme_provider"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v4, "applyFont"

    const/4 v5, 0x0

    invoke-virtual {p2, p3, v4, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "applyResult"

    .line 1214
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    aput-boolean p3, v2, p1

    const-string p3, "applyFontScale"

    .line 1215
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    const/4 v3, 0x1

    aput-boolean p3, v2, v3

    const-string p3, "applyFontWeight"

    .line 1216
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x2

    aput-boolean p2, v2, p3

    .line 1217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFont: applyResult -- "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v4, v2, p1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; applyFontScale -- "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v3, v2, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; applyFontWeight -- "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p3, v2, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    move p3, p1

    :goto_0
    if-ge p3, v1, :cond_0

    .line 1221
    :try_start_2
    aput-boolean p1, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "applyFont call: "

    .line 1223
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1224
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1226
    :goto_1
    new-instance p1, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v2, p4}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/display/PageLayoutFragment;[ZLandroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1239
    new-instance p2, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, p4}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/Exception;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private synthetic lambda$getFonts$5(Landroid/content/Context;)V
    .locals 3

    .line 1165
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/display/PageLayoutFragment;->getFontList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 1166
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 1168
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fontList"

    .line 1170
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1172
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mHander:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$4()V
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/LocalFontModel;

    invoke-direct {p0, v0}, Lcom/android/settings/display/PageLayoutFragment;->onFontChange(Lcom/android/settings/display/LocalFontModel;)V

    .line 934
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontPos:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/FontAdapter;->setCurrentIndex(J)V

    return-void
.end method

.method private synthetic lambda$showThemeCtaComfirmDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 903
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "miui.thememanager.SHOW_CTA"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.thememanager"

    .line 904
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xc8

    .line 905
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "jump to theme error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PageLayoutFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$showThemeCtaComfirmDialog$3(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 911
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-wide v0, p0, Lcom/android/settings/display/FontAdapter;->mLastIndex:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/FontAdapter;->setCurrentIndex(J)V

    .line 912
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$tryBuildRecommendLayout$0(Ljava/util/List;)V
    .locals 1

    .line 675
    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->addChildViewForRecommendLayout(Ljava/util/List;)V

    .line 676
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 677
    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$dimen;->miuix_appcompat_normal_text_size:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextByCustomSize(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryBuildRecommendLayout$1()V
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/recommend/RecommendManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/RecommendManager;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/android/settings/recommend/RecommendManager;->loadRecommendList()V

    .line 660
    invoke-static {}, Lcom/android/settings/recommend/RecommendManager;->isLoadComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    new-instance v1, Lcom/android/settings/recommend/RecommendFilter;

    invoke-direct {v1}, Lcom/android/settings/recommend/RecommendFilter;-><init>()V

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getPageIndex()I

    move-result v2

    .line 663
    iget-object v3, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/recommend/RecommendFilter;->getListByPageIndex(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->deleteRecommendFile()V

    .line 667
    invoke-virtual {v0}, Lcom/android/settings/recommend/RecommendManager;->loadRecommendList()V

    .line 668
    invoke-static {}, Lcom/android/settings/recommend/RecommendManager;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/recommend/RecommendFilter;->getListByPageIndex(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 674
    :cond_0
    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/display/PageLayoutFragment;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "PageLayoutFragment"

    const-string/jumbo v0, "recommend items not load complete."

    .line 681
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private modifyFontSizeAndWeight()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-static {v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->setUiMode(Landroid/content/Context;I)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "modifyFontSizeAndWeight set font size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mLastFontWeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageLayoutFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyFontSizeAndWeight currentFontWeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->notifyFontWeightChanged()V

    :cond_0
    return-void
.end method

.method private notNeedCache(I)Z
    .locals 1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 629
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "b004d74e-5c49-430c-bb6a-18ed5d2d33e4"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyFontWeightChanged()V
    .locals 3

    .line 458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 459
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result p0

    const-string v1, "key_var_font_scale"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/32 v1, 0x20000000

    .line 460
    invoke-static {v1, v2, v0}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V

    return-void
.end method

.method private onFontChange(Lcom/android/settings/display/LocalFontModel;)V
    .locals 2

    .line 871
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    .line 872
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    .line 873
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    .line 874
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    .line 875
    iget-boolean p1, p0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    const/16 v0, 0x32

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    const-string v1, "10"

    .line 876
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 878
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontWeightLinearLayout:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 879
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 880
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/FontWeightAdjustView;->setFontWeightChangeListener(Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;)V

    .line 881
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 882
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/display/LargeFontUtils;->setFontWeight(Landroid/content/Context;I)V

    .line 884
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 886
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    if-eqz p1, :cond_3

    .line 887
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontWeightLinearLayout:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 889
    :cond_3
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 890
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private relayoutItems()V
    .locals 5

    .line 524
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_hint_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 525
    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/display/PageLayoutFragment;->completeHintText(Landroid/widget/TextView;II)V

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/display/PageLayoutFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_bubble_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 528
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->font_bubble_left:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 530
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextSize(Landroid/view/View;F)V

    return-void
.end method

.method private setAllTextByCustomSize(Landroid/view/View;I)V
    .locals 3

    .line 546
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 549
    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-static {v2}, Lcom/android/settings/display/LargeFontUtils;->getFontScale(I)F

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 551
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 555
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 556
    check-cast p1, Landroid/view/ViewGroup;

    .line 557
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 558
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextByCustomSize(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setAllTextSize(Landroid/view/View;F)V
    .locals 3

    .line 534
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 535
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getCurrentZoomRadio()F

    move-result p0

    mul-float/2addr p2, p0

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 536
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 537
    check-cast p1, Landroid/view/ViewGroup;

    .line 538
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 539
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutFragment;->getCurrentZoomRadio()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/display/PageLayoutFragment;->setAllTextSize(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setLocalFontModelListCacahe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1285
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/display/PageLayoutFragment;->LOCAL_FONT_SP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1286
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "local_font_list"

    .line 1287
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "current_font_id"

    .line 1288
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1289
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setLocalFontModelListCacahe(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1293
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/settings/display/PageLayoutFragment;->MAX_FONT_COUNT:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 1298
    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1301
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 1302
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/LocalFontModel;

    .line 1303
    invoke-static {v1}, Lcom/android/settings/display/font/FontModel2JsonUtils;->LocalFont2Json(Lcom/android/settings/display/LocalFontModel;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1305
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PageLayoutFragment;->setLocalFontModelListCacahe(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTextViewFont(Landroid/widget/TextView;I)V
    .locals 5

    .line 588
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 592
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result v0

    const-string v1, "10"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    .line 593
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 598
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 600
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/android/settings/display/font/FontWeightUtils;->getScaleWght(Landroid/content/Context;IFI)I

    move-result v0

    .line 601
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v2}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "b004d74e-5c49-430c-bb6a-18ed5d2d33e4"

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->isMisans()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    .line 602
    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 610
    :cond_3
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getFontWeight()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    add-int/2addr v0, v1

    .line 615
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_7

    const/4 v1, 0x4

    .line 617
    invoke-static {v0, v1}, Lcom/android/settings/display/font/FontWeightUtils;->getVarTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 604
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_7

    .line 607
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v1}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x3

    .line 606
    :cond_6
    invoke-static {v0, v4}, Lcom/android/settings/display/font/FontWeightUtils;->getVarTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    .line 620
    :cond_7
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/display/PageLayoutFragment;->notNeedCache(I)Z

    move-result p2

    if-nez p2, :cond_8

    .line 622
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private static setUiMode(Landroid/content/Context;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/display/LargeFontUtils;->sendUiModeChangeMessage(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method

.method private showThemeCtaComfirmDialog(Landroid/content/Context;)V
    .locals 3

    .line 898
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 899
    sget p1, Lcom/android/settings/R$string;->font_cta_alert_title:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->font_cta_alert_message:I

    .line 900
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->font_cta_alert_btn_positive:I

    new-instance v2, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    .line 901
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->font_cta_alert_btn_negative:I

    new-instance v2, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    .line 910
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 914
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 915
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 917
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 919
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private tryBuildRecommendLayout()V
    .locals 1

    .line 657
    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateBubbleAndHintText()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    if-nez v1, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    .line 827
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/display/FontAdapter;->setFontFamily(Landroid/widget/TextView;Lcom/android/settings/display/LocalFontModel;)V

    goto :goto_1

    .line 822
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->setTextViewFont(Landroid/widget/TextView;I)V

    .line 823
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->setTextViewFont(Landroid/widget/TextView;I)V

    .line 824
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->setTextViewFont(Landroid/widget/TextView;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateLocalFontModelListCache(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/LocalFontModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1266
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1269
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/LocalFontModel;

    .line 1270
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->getFontTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocalFontModelListCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PageLayoutFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {v0, v1}, Lcom/android/settings/display/LocalFontModel;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addRecommendView(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/widget/RelativeLayout;
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->recommend_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 724
    sget v1, Lcom/android/settings/R$id;->item_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 725
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    new-instance p1, Lcom/android/settings/display/PageLayoutFragment$1;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/display/PageLayoutFragment$1;-><init>(Lcom/android/settings/display/PageLayoutFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p0, v2, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const p2, 0x3f19999a    # 0.6f

    new-array v2, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, p2, v2}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, v1, p1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-object v0
.end method

.method public applyFont(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyFont: fontId -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageLayoutFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PageLayoutFragment;Ljava/lang/String;IILandroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public fontSelected(IZ)V
    .locals 1

    if-eqz p2, :cond_3

    .line 836
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 837
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p2

    const-string v0, "com.android.thememanager"

    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.VIEW"

    .line 841
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.BROWSABLE"

    .line 842
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_1

    const-string/jumbo p2, "theme://zhuti.xiaomi.com/mainpage?S.EXTRA_NAV_ID=homepage&S.EXTRA_TAB_ID=fonts&miref=settings_detail"

    .line 846
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "theme://zhuti.xiaomi.com/mainpage?S.EXTRA_NAV_ID=homepage&S.EXTRA_TAB_ID=fonts&miref=settings"

    .line 848
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "com.setting.pad.font"

    .line 838
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/MiuiUtils;->canFindActivityStatic(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 852
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 855
    :cond_3
    iget-object p2, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/display/LocalFontModel;

    .line 857
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontPos:I

    iput v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontPos:I

    .line 858
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontPos:I

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fontSelected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getRightFileUnaccessable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PageLayoutFragment"

    .line 859
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {p2}, Lcom/android/settings/display/LocalFontModel;->getRightFileUnaccessable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 862
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->showThemeCtaComfirmDialog(Landroid/content/Context;)V

    return-void

    .line 865
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/display/PageLayoutFragment;->onFontChange(Lcom/android/settings/display/LocalFontModel;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected getCurrentZoomRadio()F
    .locals 1

    .line 634
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/ScreenZoomUtils;->getLastZoomLevel(Landroid/content/Context;)I

    move-result v0

    .line 635
    invoke-virtual {p0, v0}, Lcom/android/settings/display/PageLayoutFragment;->getZoomRadioByLevel(I)F

    move-result p0

    return p0
.end method

.method public getFonts(Landroid/content/Context;)V
    .locals 1

    .line 1163
    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/display/PageLayoutFragment;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x7d3

    return p0
.end method

.method protected getZoomRadioByLevel(I)F
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 642
    :cond_2
    sget p0, Lcom/android/settings/display/ScreenZoomUtils;->SCREEN_ZOOM_SMALL_RATIO:F

    :goto_0
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 278
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 280
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 281
    new-instance p1, Lcom/android/settings/display/FontAdapter;

    invoke-direct {p1}, Lcom/android/settings/display/FontAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    .line 282
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setContext(Landroid/content/Context;)V

    .line 283
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    new-instance v1, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setFontSelectListener(Lcom/android/settings/display/FontAdapter$FontSelectListener;)V

    .line 284
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setDataList(Ljava/util/List;)V

    .line 285
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontAdapter;->setCurrentFontId(Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 287
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 290
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->recommend_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    .line 291
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->tryBuildRecommendLayout()V

    .line 293
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_bubble_right_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 294
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->font_bubble_left_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 295
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/stat/commonswitch/TalkbackSwitch;->isTalkbackEnable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/display/PageLayoutFragment;->isTalkbackMode:Z

    if-nez v2, :cond_0

    .line 297
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const v4, 0x3f666666    # 0.9f

    invoke-interface {v2, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v2

    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, p1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 298
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v4, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const v2, 0x3da3d70a    # 0.08f

    const/4 v3, 0x0

    .line 299
    invoke-interface {p1, v2, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->font_hint_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    .line 302
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->font_bubble_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    .line 303
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->font_bubble_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 925
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 926
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

    const-string v0, "PageLayoutFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "onActivityResult: login success"

    .line 930
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->getFonts(Landroid/content/Context;)V

    .line 932
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/display/PageLayoutFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "onActivityResult: login error"

    .line 938
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontPos:I

    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontPos:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 319
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    .line 321
    new-instance p1, Lcom/android/settings/display/PageLayoutFragment$DownloadRunnable;

    invoke-direct {p1, p0}, Lcom/android/settings/display/PageLayoutFragment$DownloadRunnable;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 322
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getVariableFontChange(Landroid/content/Context;)Z

    .line 323
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getCurrentUIModeType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PageLayoutFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->adjustCurrentLevelIfNeed()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 326
    iput v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    .line 330
    iget-boolean p1, p0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    const-string v2, "10"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 331
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->getLocalFontModelListCacahe()Ljava/util/List;

    move-result-object p1

    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->updateLocalFontModelListCache(Ljava/util/List;)V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->getCurrentFontId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    .line 334
    iput-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontId:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 336
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 338
    new-instance v5, Lcom/android/settings/display/LocalFontModel;

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->getFontTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6, v3, v4}, Lcom/android/settings/display/LocalFontModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    move p1, v4

    move v2, p1

    .line 346
    :goto_0
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    .line 347
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v5}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v2}, Lcom/android/settings/display/LocalFontModel;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    .line 350
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/LocalFontModel;

    iput-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    .line 351
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v2, v1}, Lcom/android/settings/display/LocalFontModel;->setUsing(Z)V

    move v2, p1

    goto :goto_1

    .line 353
    :cond_2
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/display/LocalFontModel;

    invoke-virtual {v5, v4}, Lcom/android/settings/display/LocalFontModel;->setUsing(Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    if-lt v2, p1, :cond_5

    .line 357
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/LocalFontModel;

    .line 358
    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 362
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    .line 363
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 364
    new-instance p1, Lcom/android/settings/display/LocalFontModel;

    iget-object v5, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->getFontTitle()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v2, v5, v3, v1}, Lcom/android/settings/display/LocalFontModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    iput-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontId:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    .line 371
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lcom/android/settings/display/PageLayoutFragment;->MAX_FONT_COUNT:I

    if-le p1, v1, :cond_6

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the size of the current font list: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    sget v0, Lcom/android/settings/display/PageLayoutFragment;->MAX_FONT_COUNT:I

    invoke-interface {p1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    .line 376
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 377
    new-instance p1, Lcom/android/settings/display/LocalFontModel;

    const-string v0, "-1000"

    invoke-direct {p1, v0, v3, v3, v4}, Lcom/android/settings/display/LocalFontModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->localFontModelList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo p0, "setting_font_click_size"

    .line 380
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mHander:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 950
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 219
    sget p2, Lcom/android/settings/R$layout;->font_settings_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    .line 220
    new-instance p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 222
    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 223
    iget-object p2, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 405
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->relayoutItems()V

    .line 410
    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->isTalkbackMode:Z

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    sget v1, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_HIDE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 413
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSettingsScrollView;->setCanScroll(Z)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    sget v1, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_SHOW:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSettingsScrollView;->setCanScroll(Z)V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->fontAdapter:Lcom/android/settings/display/FontAdapter;

    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settings/display/FontAdapter;->setCurrentFontId(Ljava/lang/String;)V

    return-void
.end method

.method public onSizeChange(I)V
    .locals 3

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fontSize"

    .line 496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "setting_Display_fontsize"

    .line 497
    invoke-static {v1, v0}, Lcom/android/settings/report/InternationalCompat;->trackReportObjectEvent(Ljava/lang/String;Ljava/util/Map;)V

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

    .line 515
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xf

    .line 512
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    goto :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 509
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    goto :goto_0

    .line 506
    :cond_3
    iput v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    goto :goto_0

    :cond_4
    const/16 p1, 0xc

    .line 503
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    goto :goto_0

    :cond_5
    const/16 p1, 0xa

    .line 500
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    .line 520
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->relayoutItems()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 385
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onStart()V

    .line 386
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->font_settings_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PageLayoutFragment;->getFonts(Landroid/content/Context;)V

    goto :goto_1

    .line 398
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 433
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 434
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFontId:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/display/PageLayoutFragment;->applyFont(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment;->modifyFontSizeAndWeight()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 229
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->fontweight_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/FontWeightAdjustView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    .line 231
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->ll_font_weight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontWeightLinearLayout:Landroid/view/View;

    .line 232
    iget p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    const/16 p2, 0xd

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    .line 233
    iput v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {}, Lcom/android/settings/display/LargeFontUtils;->isSupportVarintFont()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentFont:Lcom/android/settings/display/LocalFontModel;

    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p1}, Lcom/android/settings/display/LocalFontModel;->isVariable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 236
    iget-boolean p1, p0, Lcom/android/settings/display/PageLayoutFragment;->isPrimaryUser:Z

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontWeightLinearLayout:Landroid/view/View;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->fontWeightLinearLayout:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 242
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 244
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontWeightAdjustView:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/FontWeightAdjustView;->setFontWeightChangeListener(Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;)V

    .line 245
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->font_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->font_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/FontSizeAdjustView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    .line 247
    invoke-virtual {p1, p0}, Lcom/android/settings/display/FontSizeAdjustView;->setFontSizeChangeListener(Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;)V

    .line 251
    iget p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    if-eq p1, v1, :cond_7

    const/16 p2, 0xb

    if-eq p1, p2, :cond_6

    const/16 p2, 0xc

    if-eq p1, p2, :cond_5

    const/16 p2, 0xe

    if-eq p1, p2, :cond_4

    const/16 p2, 0xf

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    .line 270
    :goto_1
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {p1, v0}, Lcom/android/settings/display/FontSizeAdjustView;->setCurrentPointIndex(I)V

    .line 271
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {p1, v0}, Lcom/android/settings/display/FontSizeAdjustView;->setLastCurrentPointIndex(I)V

    .line 272
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/FontSizeAdjustView;->setRecommendListener(Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;)V

    .line 273
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->bottom_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/FontSettingsScrollView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    return-void
.end method

.method public onWeightChange(I)V
    .locals 2

    .line 566
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastProgress:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastFontWeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore weight change, progress:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PageLayoutFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 570
    :cond_0
    iput p1, p0, Lcom/android/settings/display/PageLayoutFragment;->mLastProgress:I

    .line 572
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_hint_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_bubble_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_bubble_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/PageLayoutFragment;->mCurrentLevel:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/display/PageLayoutFragment;->completeHintText(Landroid/widget/TextView;II)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontHintTv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/display/PageLayoutFragment;->setTextViewFont(Landroid/widget/TextView;I)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleLeftTv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/display/PageLayoutFragment;->setTextViewFont(Landroid/widget/TextView;I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mFontBubbleRightTv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/display/PageLayoutFragment;->setTextViewFont(Landroid/widget/TextView;I)V

    return-void
.end method

.method public scrollToPosition(II)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    const-string/jumbo v1, "scrollX"

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 424
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    const-string/jumbo v0, "scrollY"

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 425
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 426
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 427
    filled-new-array {p1, p0}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 428
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public scrollViewToHideRecommend()V
    .locals 4

    .line 782
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sget v2, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_HIDE:I

    if-eq v0, v2, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->scrollViewCard:Lcom/android/settings/display/FontSettingsScrollView;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSettingsScrollView;->setCanScroll(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 784
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 785
    new-instance v2, Lcom/android/settings/display/PageLayoutFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings/display/PageLayoutFragment$4;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 791
    new-instance v2, Lcom/android/settings/display/PageLayoutFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings/display/PageLayoutFragment$5;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 816
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/display/PageLayoutFragment;->scrollToPosition(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showRecommendLayout()V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sget v1, Lcom/android/settings/display/PageLayoutFragment;->RECOMMEND_SHOW:I

    if-eq v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutFragment;->mRecommendLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 746
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 747
    new-instance v1, Lcom/android/settings/display/PageLayoutFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/PageLayoutFragment$2;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 753
    new-instance v1, Lcom/android/settings/display/PageLayoutFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/display/PageLayoutFragment$3;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 775
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
