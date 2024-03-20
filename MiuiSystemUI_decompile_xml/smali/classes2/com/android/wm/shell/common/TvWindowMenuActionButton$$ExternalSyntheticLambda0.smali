.class public final synthetic Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field public final synthetic f$1:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Icon;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Icon;

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mCurrentIcon:Landroid/graphics/drawable/Icon;

    .line 14
    if-ne v1, p0, :cond_0

    .line 16
    iget-object p0, v0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
