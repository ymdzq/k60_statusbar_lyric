.class Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ResolverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverListAdapter"
.end annotation


# instance fields
.field private mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/applications/ResolverSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/ResolverSettings;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->this$0:Lcom/android/settings/applications/ResolverSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/ResolverSettings;Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;-><init>(Lcom/android/settings/applications/ResolverSettings;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    if-ltz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 168
    iget-object p2, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->this$0:Lcom/android/settings/applications/ResolverSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->resolver_settings_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 169
    new-instance p3, Lcom/android/settings/applications/ResolverSettings$ViewHolder;

    invoke-direct {p3, p2}, Lcom/android/settings/applications/ResolverSettings$ViewHolder;-><init>(Landroid/view/View;)V

    .line 170
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    iget-object p3, p3, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 174
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->this$0:Lcom/android/settings/applications/ResolverSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ResolverSettings;->-$$Nest$fgetmIconSize(Lcom/android/settings/applications/ResolverSettings;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/ResolverSettings$ViewHolder;

    .line 181
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->this$0:Lcom/android/settings/applications/ResolverSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ResolverSettings;->access$000(Lcom/android/settings/applications/ResolverSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 182
    iget-object v1, p3, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p3, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->this$0:Lcom/android/settings/applications/ResolverSettings;

    .line 184
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    .line 183
    invoke-static {v2, p1, v0, v3, v4}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object p1, p3, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->drag:Landroid/view/View;

    new-instance p3, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter$1;

    invoke-direct {p3, p0}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter$1;-><init>(Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-object p2
.end method

.method public setArray(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->mArray:Landroid/util/SparseArray;

    .line 212
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
