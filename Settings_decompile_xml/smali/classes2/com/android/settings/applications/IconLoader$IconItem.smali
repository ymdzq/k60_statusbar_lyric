.class Lcom/android/settings/applications/IconLoader$IconItem;
.super Ljava/lang/Object;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconItem"
.end annotation


# instance fields
.field mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader$IconItem;->mIconView:Landroid/widget/ImageView;

    .line 20
    iput-object p2, p0, Lcom/android/settings/applications/IconLoader$IconItem;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public refreshIcon()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader$IconItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/android/settings/applications/IconLoader$IconItem;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader$IconItem;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/applications/IconLoader$IconItem;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
