.class Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SilentModeNetWorkAlarmAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment;
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

.field private mHeaderToDrawable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


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
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p3, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mHeaderToDrawable:Landroid/util/ArrayMap;

    return-void
.end method

.method private getAppIcon(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mHeaderToDrawable:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;

    goto :goto_0

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->miuix_preference_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;-><init>(Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder-IA;)V

    const v0, 0x1020016    # @android:id/title

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x1020006    # @android:id/icon

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->system_app_text_view_padding_start:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    iget-object v2, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    iget-object v5, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 82
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 80
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->application_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 85
    iget-object v2, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    iget-object v2, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iget-object v0, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x1020010    # @android:id/summary

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v0, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p3, p3, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeNetWorkAlarmAppFragment$HeaderAdapter;->getAppIcon(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
