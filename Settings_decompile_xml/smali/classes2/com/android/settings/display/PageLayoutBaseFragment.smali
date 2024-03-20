.class public abstract Lcom/android/settings/display/PageLayoutBaseFragment;
.super Lcom/android/settings/BaseFragment;
.source "PageLayoutBaseFragment.java"

# interfaces
.implements Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;
.implements Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;


# static fields
.field protected static final CALL_RECORDS_NAME_IDS:[I

.field protected static final CALL_RECORDS_SUMMARY_IDS:[I

.field protected static final PAGE_LAYOUT_CONTACT_PAGE_IDS:[I

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

.field protected static final PAGE_LAYOUT_SUMMARY_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PAGE_LAYOUT_TITLE_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

.field protected mCurrentLevel:I

.field protected mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_TITLE_SIZE:Ljava/util/HashMap;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_SUMMARY_SIZE:Ljava/util/HashMap;

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    .line 47
    sget v3, Lcom/android/settings/R$id;->item_page_2_1:I

    sget v4, Lcom/android/settings/R$id;->item_page_2_2:I

    sget v5, Lcom/android/settings/R$id;->item_page_2_3:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    sput-object v3, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_CONTACT_PAGE_IDS:[I

    .line 53
    sget v3, Lcom/android/settings/R$string;->call_records_name_1:I

    sget v4, Lcom/android/settings/R$string;->call_records_name_2:I

    sget v5, Lcom/android/settings/R$string;->call_records_name_3:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    sput-object v3, Lcom/android/settings/display/PageLayoutBaseFragment;->CALL_RECORDS_NAME_IDS:[I

    .line 59
    sget v3, Lcom/android/settings/R$string;->call_records_summary_1:I

    sget v4, Lcom/android/settings/R$string;->call_records_summary_2:I

    sget v5, Lcom/android/settings/R$string;->call_records_summary_3:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    sput-object v3, Lcom/android/settings/display/PageLayoutBaseFragment;->CALL_RECORDS_SUMMARY_IDS:[I

    const/16 v3, 0xa

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->page_layout_extral_small_size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xc

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->page_layout_small_size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->page_layout_normal_size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xd

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->page_layout_medium_size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xe

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/android/settings/R$dimen;->page_layout_large_size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xf

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/android/settings/R$dimen;->page_layout_huge_size:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xb

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v10, Lcom/android/settings/R$dimen;->page_layout_godzilla_size:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget v2, Lcom/android/settings/R$dimen;->page_layout_extral_small_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget v2, Lcom/android/settings/R$dimen;->page_layout_small_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget v2, Lcom/android/settings/R$dimen;->page_layout_normal_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget v2, Lcom/android/settings/R$dimen;->page_layout_medium_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget v2, Lcom/android/settings/R$dimen;->page_layout_large_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget v2, Lcom/android/settings/R$dimen;->page_layout_huge_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget v2, Lcom/android/settings/R$dimen;->page_layout_godzilla_title_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget v0, Lcom/android/settings/R$dimen;->page_layout_extral_small_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget v0, Lcom/android/settings/R$dimen;->page_layout_small_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget v0, Lcom/android/settings/R$dimen;->page_layout_normal_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget v0, Lcom/android/settings/R$dimen;->page_layout_medium_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget v0, Lcom/android/settings/R$dimen;->page_layout_large_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget v0, Lcom/android/settings/R$dimen;->page_layout_huge_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget v0, Lcom/android/settings/R$dimen;->page_layout_godzilla_summary_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentUIModeType()I
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/LargeFontUtils;->getCurrentUIModeType(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected getPageLayoutSummaryTextSize()F
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->getCurrentUIModeType()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_SUMMARY_SIZE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected getPageLayoutTextSize()F
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->getCurrentUIModeType()I

    move-result v0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected getPageLayoutTitleTextSize()F
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->getCurrentUIModeType()I

    move-result v0

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_TITLE_SIZE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected abstract initActionBarMenu()V
.end method

.method protected abstract initUI(Landroid/view/View;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PageLayoutBaseFragment;->initUI(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->initActionBarMenu()V

    return-void
.end method

.method public onWeightChange(I)V
    .locals 0

    .line 0
    return-void
.end method
