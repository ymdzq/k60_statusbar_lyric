.class public Lcom/android/settingslib/widget/ActionButtonsPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ActionButtonsPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;
    }
.end annotation


# static fields
.field private static final mIsAtLeastS:Z


# instance fields
.field private final mBtnBackgroundStyle1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mBtnBackgroundStyle2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mBtnBackgroundStyle3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mBtnBackgroundStyle4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field private final mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field private final mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field private final mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field private mDivider1:Landroid/view/View;

.field private mDivider2:Landroid/view/View;

.field private mDivider3:Landroid/view/View;

.field private final mVisibleButtonInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/settingslib/utils/BuildCompatUtils;->isAtLeastS()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mIsAtLeastS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 68
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 69
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 70
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 99
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 68
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 69
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 70
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 68
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 69
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 70
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 89
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 68
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 69
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 70
    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    .line 84
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init()V

    return-void
.end method

.method private fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/content/res/TypedArray;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 103
    sget v0, Lcom/android/settingslib/widget/R$layout;->settingslib_action_buttons:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    sget v2, Lcom/android/settingslib/widget/R$array;->background_style1:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 108
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    sget v2, Lcom/android/settingslib/widget/R$array;->background_style2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 109
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    sget v2, Lcom/android/settingslib/widget/R$array;->background_style3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    .line 110
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    sget v2, Lcom/android/settingslib/widget/R$array;->background_style4:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public static isDarkModeEnable(Landroid/content/Context;)Z
    .locals 1

    .line 540
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 541
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setupBackgrounds(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 223
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 224
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupDivider1()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setupDivider2()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    .line 526
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setupDivider3()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 231
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/widget/Button;

    move-result-object v0

    .line 232
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mIsAtLeastS:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mIsAtLeastS:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mIsAtLeastS:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mIsAtLeastS:Z

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_b

    const/4 v1, 0x2

    if-eq v2, v1, :cond_9

    const/4 v1, 0x3

    if-eq v2, v1, :cond_7

    const/4 v1, 0x4

    if-eq v2, v1, :cond_5

    const-string v0, "ActionButtonPreference"

    const-string v1, "No visible buttons info, skip background settings."

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 195
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/widget/R$color;->btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 216
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupDivider1()V

    .line 217
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupDivider2()V

    .line 218
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupDivider3()V

    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 124
    sget-boolean v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mIsAtLeastS:Z

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settingslib/widget/R$id;->button1:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settingslib/widget/R$id;->button2:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settingslib/widget/R$id;->button3:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settingslib/widget/R$id;->button4:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 132
    sget v0, Lcom/android/settingslib/widget/R$id;->divider1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    .line 133
    sget v0, Lcom/android/settingslib/widget/R$id;->divider2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    .line 134
    sget v0, Lcom/android/settingslib/widget/R$id;->divider3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    .line 136
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 137
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 138
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 139
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 142
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->updateLayout()V

    return-void
.end method

.method public setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/widget/R$color;->btn_icon_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIcon(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActionButtonPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 251
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 339
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/widget/R$color;->btn_icon_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIcon(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActionButtonPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 321
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 429
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 409
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/widget/R$color;->btn_icon_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIcon(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/graphics/drawable/Drawable;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActionButtonPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public setButton3OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 391
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 392
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton4Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 479
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/widget/R$color;->btn_icon_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIcon(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/graphics/drawable/Drawable;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActionButtonPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public setButton4OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton4Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 461
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 462
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton4Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;Z)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method
