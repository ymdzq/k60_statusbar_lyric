.class Lcom/android/settings/applications/ResolverSettings$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ResolverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public drag:Landroid/view/View;

.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020014    # @android:id/text1

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->text:Landroid/widget/TextView;

    const v0, 0x1020006    # @android:id/icon

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 224
    sget v0, Lcom/android/settings/R$id;->drag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings$ViewHolder;->drag:Landroid/view/View;

    return-void
.end method
