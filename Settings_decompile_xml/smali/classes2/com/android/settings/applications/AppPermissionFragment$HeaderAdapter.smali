.class Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPermissionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppPermissionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeaderToApplication:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 110
    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mPm:Landroid/content/pm/PackageManager;

    const-string p2, "layout_inflater"

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    iput-object p3, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mHeaderToApplication:Landroid/util/ArrayMap;

    return-void
.end method

.method private getAppIcon(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mHeaderToApplication:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v1, 0x927c0

    invoke-static {v0, p1, p0, v1, v2}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;

    goto/16 :goto_0

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->miuix_preference_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 133
    new-instance p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;-><init>(Lcom/android/settings/applications/AppPermissionFragment$ViewHolder-IA;)V

    const v0, 0x1020016    # @android:id/title

    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x1020006    # @android:id/icon

    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->system_app_text_view_padding_start:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iget-object v2, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 138
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    iget-object v5, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 137
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->application_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    iget-object v2, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    iget-object v2, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    iget-object v0, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x1020010    # @android:id/summary

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 148
    sget v0, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :goto_0
    iget-object v0, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p3, p3, Lcom/android/settings/applications/AppPermissionFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppPermissionFragment$HeaderAdapter;->getAppIcon(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
