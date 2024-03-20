.class public Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ScreenEnhanceEngineTopPreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceExtraPadding;


# instance fields
.field private final TYPE_ADD_IMAGE_VIEW:I

.field private final TYPE_ADD_VIDEO_VIEW:I

.field private final TYPE_REPLACE_IMAGE_VIEW:I

.field private final TYPE_SET_RADIUS:I

.field private final TYPE_SET_SUMMARY_TEXT:I

.field private headViewAddList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private headViewTypeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_IMAGE_VIEW:I

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_VIDEO_VIEW:I

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_SUMMARY_TEXT:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_RADIUS:I

    const/4 p1, 0x4

    .line 29
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_REPLACE_IMAGE_VIEW:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->mInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_IMAGE_VIEW:I

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_VIDEO_VIEW:I

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_SUMMARY_TEXT:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_RADIUS:I

    const/4 p1, 0x4

    .line 29
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_REPLACE_IMAGE_VIEW:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->mInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_IMAGE_VIEW:I

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_VIDEO_VIEW:I

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_SUMMARY_TEXT:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_RADIUS:I

    const/4 p1, 0x4

    .line 29
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_REPLACE_IMAGE_VIEW:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    .line 42
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->mInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_IMAGE_VIEW:I

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_ADD_VIDEO_VIEW:I

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_SUMMARY_TEXT:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_SET_RADIUS:I

    const/4 p1, 0x4

    .line 29
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->TYPE_REPLACE_IMAGE_VIEW:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    .line 37
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->mInit()V

    return-void
.end method

.method private mInit()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addImageView(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->addImageView(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addVideoView(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->addVideoView(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    .line 113
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 114
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screenenhance"

    const-string v2, "Folme clean"

    .line 115
    invoke-static {v0, v2}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    :cond_0
    sget v0, Lcom/android/settings/R$id;->screen_enhance_engine_top_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    if-eqz p1, :cond_6

    .line 121
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_6

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewTypeList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    .line 139
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    .line 140
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 139
    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->replaceImageView(II)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->setRadius(F)V

    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->setSummaryText(I)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->addVideoView(I)V

    goto :goto_1

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->screenEnhanceEngineTopView:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->headViewAddList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->addImageView(I)V

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 153
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_mask_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_bg_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
