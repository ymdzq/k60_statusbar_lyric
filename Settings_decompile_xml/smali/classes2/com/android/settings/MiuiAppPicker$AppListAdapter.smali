.class public Lcom/android/settings/MiuiAppPicker$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/MiuiAppPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiAppPicker;Landroid/content/Context;)V
    .locals 6

    .line 74
    iput-object p1, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->this$0:Lcom/android/settings/MiuiAppPicker;

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    const-string v1, "layout_inflater"

    .line 76
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    move v2, v0

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 79
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 80
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const-string/jumbo v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    new-instance v4, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;

    invoke-direct {v4, p1}, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/MiuiAppPicker;)V

    .line 91
    iput-object v3, v4, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 93
    iget-object v3, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/MiuiAppPicker;->-$$Nest$sfgetsDisplayNameComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    new-instance v1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;

    invoke-direct {v1, p1}, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/MiuiAppPicker;)V

    .line 97
    sget p1, Lcom/android/settings/R$string;->no_application:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 98
    iget-object p1, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 106
    iget-object p3, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p3, p2}, Lcom/android/settings/development/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;

    move-result-object p2

    .line 107
    iget-object p3, p2, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;

    .line 109
    iget-object v0, p2, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p2, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;->this$0:Lcom/android/settings/MiuiAppPicker;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_0
    iget-object p0, p2, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p3
.end method
