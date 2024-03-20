.class Lcom/android/settings/MiuiBandMode$3;
.super Ljava/lang/Object;
.source "MiuiBandMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiBandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiBandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiBandMode;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/settings/MiuiBandMode$3;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 277
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiBandMode$BandListItem;

    .line 278
    iget-object p2, p0, Lcom/android/settings/MiuiBandMode$3;->this$0:Lcom/android/settings/MiuiBandMode;

    iget-object p2, p2, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 279
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$3;->this$0:Lcom/android/settings/MiuiBandMode;

    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 280
    iput-boolean p0, p1, Lcom/android/settings/MiuiBandMode$BandListItem;->mChecked:Z

    goto :goto_0

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$3;->this$0:Lcom/android/settings/MiuiBandMode;

    iget-object p0, p0, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 283
    iput-boolean p0, p1, Lcom/android/settings/MiuiBandMode$BandListItem;->mChecked:Z

    :goto_0
    return-void
.end method
